# sandbox_telemetry_parse — 2026-10-16 04:05:13 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=71953 lines=268
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 166 |
| `memory_sample` | 93 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 93} |
| `chromeGpuPssKb` | {'int': 93} |
| `chromeOtherPssKb` | {'int': 93} |
| `chromeProcesses` | {'int': 93} |
| `chromeProfiles` | {'int': 93} |
| `chromeRendererMaxPssKb` | {'int': 93} |
| `chromeRendererPssKb` | {'int': 93} |
| `chromeRenderers` | {'int': 93} |
| `chromeTabs` | {'int': 93} |
| `chromeTabsProbedProfiles` | {'int': 93} |
| `chromeUtilityPssKb` | {'int': 93} |
| `desktopPssKb` | {'int': 93} |
| `hostPssKb` | {'int': 93} |
| `kind` | {'str': 93} |
| `memAvailableKb` | {'int': 93} |
| `memTotalKb` | {'int': 93} |
| `otherPssKb` | {'int': 93} |
| `processes` | {'int': 93} |
| `pssFallbackProcesses` | {'int': 93} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 163} |
| `display` | {'int': 166} |
| `kind` | {'str': 166} |
| `processes` | {'int': 166} |
| `pssKb` | {'int': 166} |
| `rendererMaxPssKb` | {'int': 166} |
| `renderers` | {'int': 166} |
| `tabs` | {'int': 165} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
