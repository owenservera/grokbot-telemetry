# sandbox_telemetry_parse — 2026-10-14 00:35:30 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1335017 lines=3551
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2541 |
| `chrome_profile_sample` | 1002 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 2541} |
| `chromeGpuPssKb` | {'int': 2541} |
| `chromeOtherPssKb` | {'int': 2541} |
| `chromeProcesses` | {'int': 2541} |
| `chromeProfiles` | {'int': 2541} |
| `chromeRendererMaxPssKb` | {'int': 2541} |
| `chromeRendererPssKb` | {'int': 2541} |
| `chromeRenderers` | {'int': 2541} |
| `chromeTabs` | {'int': 2541} |
| `chromeTabsProbedProfiles` | {'int': 2541} |
| `chromeUtilityPssKb` | {'int': 2541} |
| `desktopPssKb` | {'int': 2541} |
| `hostPssKb` | {'int': 2541} |
| `kind` | {'str': 2541} |
| `memAvailableKb` | {'int': 2541} |
| `memTotalKb` | {'int': 2541} |
| `otherPssKb` | {'int': 2541} |
| `processes` | {'int': 2541} |
| `pssFallbackProcesses` | {'int': 2541} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `cpuMillicores` | {'int': 1001} |
| `display` | {'int': 1002} |
| `kind` | {'str': 1002} |
| `processes` | {'int': 1002} |
| `pssKb` | {'int': 1002} |
| `rendererMaxPssKb` | {'int': 1002} |
| `renderers` | {'int': 1002} |
| `tabs` | {'int': 1002} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
