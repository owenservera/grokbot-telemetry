#!/usr/bin/env node
// vivim_event.mjs — append ONE allowlisted VIVIM work-metadata event to DATA/vivim/events-YYYY-MM.jsonl.
// PUBLIC repo: only metadata. Never prompts, replies, thread URLs, tokens, file contents, paths or personal data.
// Usage: node collectors/vivim_event.mjs '{"type":"pr.merged","pr":22,"authorship":{"grokbot":100,"webai":0},"tests":{"pass":4,"fail":0}}'
import { appendFileSync, mkdirSync } from 'node:fs';
import { dirname, join } from 'node:path'; import { fileURLToPath } from 'node:url';
const TYPES = new Set(['request.created','request.approved','request.completed','request.blocked','build.started','build.completed','review.completed','fleet.started','fleet.completed','system.status','pr.opened','pr.merged','deploy.completed','e2e.completed']);
const slug = v => typeof v === 'string' && /^[a-z0-9][a-z0-9._:@-]{0,47}$/i.test(v) ? v : undefined;
const int = (v, max = 1e9) => Number.isInteger(v) && v >= 0 && v <= max ? v : undefined;
export function sanitize(src) {
  if (!src || typeof src !== 'object' || !TYPES.has(src.type)) throw new Error('unsupported event type');
  const e = { timestamp: new Date(src.timestamp ?? Date.now()).toISOString(), source: 'vivim', agent: 'grokbot', type: src.type };
  if (src.repo === 'owenservera/vivim-web-harness') e.repo = src.repo;
  for (const k of ['pr', 'issue']) if (int(src[k], 1e6) !== undefined) e[k] = src[k];
  for (const k of ['provider', 'model', 'reviewer', 'status']) if (slug(src[k])) e[k] = src[k];
  if (int(src.durationMs, 864e5) !== undefined) e.durationMs = src.durationMs;
  if (src.authorship && typeof src.authorship === 'object') { const a = {}; for (const k of ['grokbot', 'webai']) if (int(src.authorship[k], 100) !== undefined) a[k] = src.authorship[k]; if (Object.keys(a).length) e.authorship = a; }
  if (src.tests && typeof src.tests === 'object') { const t = {}; for (const k of ['pass', 'fail']) if (int(src.tests[k], 1e6) !== undefined) t[k] = src.tests[k]; if (Object.keys(t).length) e.tests = t; }
  return e;
}
if (import.meta.url === `file://${process.argv[1]}`) {
  const e = sanitize(JSON.parse(process.argv[2] ?? '{}'));
  const file = join(dirname(fileURLToPath(import.meta.url)), '..', 'DATA', 'vivim', `events-${e.timestamp.slice(0, 7)}.jsonl`);
  mkdirSync(dirname(file), { recursive: true }); appendFileSync(file, JSON.stringify(e) + '\n'); console.log(JSON.stringify(e));
}
