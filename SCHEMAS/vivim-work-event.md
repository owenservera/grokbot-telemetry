# vivim work event (DATA/vivim/events-YYYY-MM.jsonl)

Public, metadata-only stream of Grok Bot work on owenservera/vivim-web-harness, read by VIVIM /share.
Written only via `collectors/vivim_event.mjs` (allowlist sanitizer; unknown fields are dropped).

Fields: `timestamp` (ISO UTC), `source`="vivim", `agent`="grokbot", `type`
(request.*, build.*, review.completed, fleet.*, system.status, pr.opened, pr.merged, deploy.completed, e2e.completed),
optional `repo`, `pr`, `issue`, `provider`, `model`, `reviewer`, `status`, `durationMs`,
`authorship` {grokbot, webai} (percent, G0 metric), `tests` {pass, fail}.

Never: prompts, replies, thread URLs, tokens, file contents, paths, personal data.
