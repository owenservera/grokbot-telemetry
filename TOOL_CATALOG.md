# TOOL_CATALOG — Live inventory

**Captured:** 2026-10-05 16:51 CEST  
**Method:** `command -v`, `readlink -f`, `<cmd> --version` (or equivalent), PATH scan, listing of `/home/box/.local/bin`, `/home/box/.bun/bin`, `/home/box/.nvm/versions/node/v22.23.3/bin`, `/usr/local/bin`, `/opt`.  
**Auth rule:** existence/mode/size only; **never** printed secret file contents.

## PATH (observed)

```
/home/box/.local/bin:/home/box/.bun/bin:/home/box/.grok/bin:/home/box/.cargo/bin:/home/box/.nvm/versions/node/v22.23.3/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games
```
(duplicates collapsed for readability; live PATH had repeated prefixes)

## Agent / coding CLIs

| CLI | which | realpath | version | Auth metadata (no secrets) |
|-----|-------|----------|---------|----------------------------|
| claude | `/home/box/.local/bin/claude` | `/home/box/.local/share/claude/versions/2.1.289` | `2.1.289 (Claude Code)` | `.claude/` dir present; `.claude.json` mode 600 size 7430; `.claude/.credentials.json` mode 600 size 519 — **auth present** (method UNKNOWN without reading file) |
| codex | `/home/box/.local/bin/codex` | `.../@openai/codex/bin/codex.js` | `codex-cli 0.160.0` | `.codex/auth.json` mode 600 size 83 — **auth present**; app-server daemon running; live `codex auth` process observed |
| grok | `/home/box/.local/bin/grok` → `.grok/bin/grok` | `/home/box/.grok/downloads/grok-linux-x86_64` | `grok 1.0.46 (2765805b9442)` | `.grok/auth.json` mode 600 size 1796 — **auth present**; `.grok/config.toml` present |
| agent | `/home/box/.local/bin/agent` | same binary as grok | `grok 1.0.46 (2765805b9442)` | same as grok |
| opencode | `/home/box/.local/bin/opencode` | nvm `opencode-ai` bin | `1.18.34` | **auth present** — storage `/home/box/.local/share/opencode/auth.json` (mode 600; contents never read). CLI `opencode auth list` shows OpenCode Zen (api). Provider label: opencode / OpenCode Zen |
| kilo | `/home/box/.local/bin/kilo` | nvm `@kilocode/cli` | `7.8.3` | `.config/kilo/kilo.jsonc` present — config present; auth state UNKNOWN |
| daintree | `/usr/bin/daintree` → `/opt/Daintree/daintree` | `/opt/Daintree/daintree` | **0.41.0** (from Chrome crashpad `_version` annotation; Electron `42.11.8`). Note: `daintree --version` **launches GUI** — do not use for collectors | `.daintree/` mode 700; `.config/Daintree/` present |
| goose | `/home/box/.local/bin/goose` | same | `1.53.0` | UNKNOWN |
| aider | `/home/box/.local/bin/aider` (uv tool) | uv tools path | `0.86.2` | UNKNOWN |
| gemini | nvm bin | `@google/gemini-cli` | `0.62.0` | `.gemini/` dir present (mostly tmp projects.json.*) — auth UNKNOWN |
| crush | nvm bin | `@charmland/crush` | `v0.97.1` | UNKNOWN |
| llm | uv tool | | `0.36` | UNKNOWN |
| hf | uv tool | | `2.1.1` | UNKNOWN |

## Runtimes & package managers

| CLI | which | version |
|-----|-------|---------|
| bash | `/usr/bin/bash` | GNU bash 5.2.37(1)-release |
| sh | `/usr/bin/sh` → **dash** | dash (no GNU --version) |
| node | nvm `v22.23.3` | `v22.23.3` |
| npm | nvm | `10.9.9` |
| npx | nvm | `10.9.9` |
| corepack | nvm | `0.36.0` |
| pnpm | nvm | `12.9.1` |
| bun | `/home/box/.bun/bin/bun` | `1.4.2` |
| python / python3 | `/usr/bin/python` and `/usr/bin/python3` | `Python 3.13.5` |
| uv | `/home/box/.local/bin/uv` | `uv 0.12.23` |
| pip / pip3 | `/usr/bin/pip` and `/usr/bin/pip3` | `pip 25.1.1` |
| rustc / cargo | `/usr/bin` | `1.85.1` |
| go | `/usr/bin/go` | `go1.24.4 linux/amd64` |
| perl | `/usr/bin/perl` | `v5.40.1` |
| tsc | nvm | `Version 7.0.2` |
| tsx | nvm | `tsx v4.23.15` |

Also via uv: `python3.12`, `python3.13`, `python3.14` shims under `.local/bin`.

## Browser / automation

| CLI | which | version / notes |
|-----|-------|-----------------|
| google-chrome | `/usr/bin/google-chrome` | `Google Chrome 154.0.8037.57` |
| box-chrome | `/usr/local/bin/box-chrome` | wrapper; `--version` empty |
| playwright | nvm | `Version 1.63.0` |
| playwright-mcp | nvm + `/usr/local/bin` | present |
| sand-playwright-mcp | `/usr/local/bin` → sand package | present |

## Dev / utility CLIs

| CLI | which | version |
|-----|-------|---------|
| git | `/usr/bin/git` | `2.47.3` |
| gh | `/usr/bin/gh` | `2.102.0` — **OAuth present** (owenservera; see auth update below) |
| curl | `/usr/bin/curl` | `8.14.1` |
| wget | `/usr/bin/wget` | `1.25.0` |
| jq | `/usr/bin/jq` | `1.7` |
| rg | `/usr/bin/rg` | ripgrep `14.1.1` |
| fd | `/home/box/.local/bin/fd` → fdfind | `10.2.0` |
| bat | `/home/box/.local/bin/bat` → batcat | `0.25.0` |
| make | `/usr/bin/make` | `4.4.1` |
| gcc / g++ | `/usr/bin` | `14.2.0` |
| ruff | uv tool | `0.16.10` |
| magika | `/usr/local/bin/magika` | `1.0.1` |
| htop / btop / top / ps | present | btop `1.3.2` |
| ss / netstat | present | |
| xdg-open | present | |

## Missing (candidates checked)

`docker`, `vercel` CLI, `deno`, `java`, `ruby`, `php`, `cmake`, `clang`, `strace`, `lsof`, `firefox`, `chromium` (google-chrome present), `playwright-cli` name.

## uv tool shims in `.local/bin` (extra)

`basedpyright`, `black`, `httpx`, `ipython`, `jupyter-lab*`, `markitdown`, `mcp-server-fetch`, `mypy`, `pre-commit`, `pytest`, `ty`, `tiny-agents`, …

## Box platform helpers (`/usr/local/bin`)

Notable: `box-chrome`, `box-xvfb`, `box-x11vnc`, `box-xfwm4`, `box-picom`, `box-plank`, `box-doctor`, `box-bounded-log`, `sand-supervisor.mjs`, `sand-session-sync.mjs`, `sand-cookie-persist.mjs`, `sand-web-bot-auth.mjs`, `sand-ua-governor.mjs`, `sand-egress-tunnel`, `sand-window-router.mjs`, `persist-cli-auth`, `cursor-agent-store-fuse`, …

## Agent tooling surface ↔ box mechanisms

| Concept | Observable on box |
|---------|-------------------|
| Shell | bash children of exec-daemon (`/exec-daemon/node ... serve --port 1400x`) |
| Read | FS under `/workspace`, `/home/box`, … |
| computerUse / desktop | Xvfb + xfwm4 + Chrome (`box-chrome` / google-chrome) on assigned DISPLAY |
| MCP (Gmail, Drive, GitHub, Vercel, …) | No dedicated local MCP server processes attributed in baseline; connector runtime likely host-side |
| SendToUser / chat | No local binary |

## Auth summary (safe)

| System | Auth present? | Notes |
|--------|---------------|-------|
| Claude | YES (credentials file exists) | method UNKNOWN |
| Codex | YES (auth.json exists; auth process live) | likely oauth/device |
| Grok | YES (auth.json exists) | method UNKNOWN |
| OpenCode | YES — auth.json present | `/home/box/.local/share/opencode/auth.json` (never read); OpenCode Zen / provider opencode |
| Kilo | config present | auth UNKNOWN |
| Daintree | config dirs present | auth UNKNOWN |
| gh | YES — OAuth logged in | account **owenservera**; scopes gist, read:org, repo (token never recorded) |
| git identity | empty | no global user.name/email |
| Env TOKEN/KEY names | none matching filter at snapshot | values never printed |

## Collector warning

**Do not** run `daintree --version` in automated collectors — it starts a full Electron app. Prefer crashpad annotation, package metadata, or `strings` on asar.

---

## Update 2026-10-05 17:05 CEST (Collector 1 pass)

- Confirmed **sand-playwright-runtime** under base exec-daemon 1337 (path `/var/tmp/sand-playwright-runtime/<hash>/…`) — computerUse automation workers; hash redacted in JSONL as `[HEX_REDACTED]`.
- No new top-level CLI binaries discovered this pass.
- New **agents** (not CLIs): AUTH-MASTER, Daintree Master, Research Master, Runtime Master, Code Master, MIRROR-MASTER — see ARCHITECTURE / PROCESS_MAP.
- AUTH-MASTER observed invoking `gh auth login --web` (gh still may show not-logged-in until flow completes).

---

## Update 2026-10-05 17:07 CEST (Collector 3)

- No new CLIs. Platform log `/tmp/sand-box-telemetry.log` schema documented under SCHEMAS + DATA.
- CDP ports 9224–9227 live with Fork-2..5; formula `9222+N`.

---

## Update 2026-10-05 17:08 CEST — Daintree Master peer

| Item | Evidence |
|------|----------|
| daintree 0.41.0 | crashpad annotation + PEER; **CONFIRMED** live on `DISPLAY=:5` (Daintree Master) |
| Launch gotcha | PEER: orphan on `:2` → use `DISPLAY=:5 setsid bash -lc 'daintree'` |
| Playground | `/workspace/daintree-playground` @ `88f6959` **CONFIRMED** |
| Worktrees | `/workspace/daintree-playground-worktrees/{feature-alpha-note@a74c7ff,chore-beta-note@88f6959}` **CONFIRMED** |
| Docs | `/workspace/daintree-docs/` incl. `08-worktrees-y-review.md`, `10-trazas-reales.md` **CONFIRMED** |
| Wizard prefs | PEER only: Integrations → CLI agents; Telemetry Off; Skip permission prompts Off |


---

## Update 2026-10-05 17:09:25 CEST — `gh` CLI auth

| CLI | Path | Auth | Notes |
|-----|------|------|-------|
| `gh` | `/usr/bin/gh` | **present** — OAuth device-code (`gh auth login --web`), account **owenservera** | Scopes observed via `gh auth status`: `gist`, `read:org`, `repo`. Token value never recorded. Enables local `git push` via `gh auth setup-git` + `collectors/git_sync.sh`. |

Source: `gh auth status` (token redacted); Europe/Paris.


---

## Update 2026-10-05 ~17:17–17:43 CEST — OpenCode + gh auth (AUTH-MASTER evidence)

| System | Auth | Storage / evidence (no secrets) |
|--------|------|----------------------------------|
| **OpenCode** | **present** | `/home/box/.local/share/opencode/auth.json` exists (mode `600`, mtime ~17:17 CEST 2026-10-05). Contents **never read**. `opencode auth list` → OpenCode Zen (api); provider **opencode**. |
| **gh** | **present** (reconfirmed 17:43 CEST) | `gh auth status`: logged in as **owenservera**; protocol https; scopes `gist`, `read:org`, `repo`. Token values never recorded. |

Source: `stat` + `opencode auth list` (metadata) + `gh auth status` (token lines discarded); Europe/Paris.
