# sandbox_telemetry_parse — 2026-10-16 14:12:20 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=520420 lines=1945
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1284 |
| `memory_sample` | 652 |
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
| `chromeBrowserPssKb` | {'int': 652} |
| `chromeGpuPssKb` | {'int': 652} |
| `chromeOtherPssKb` | {'int': 652} |
| `chromeProcesses` | {'int': 652} |
| `chromeProfiles` | {'int': 652} |
| `chromeRendererMaxPssKb` | {'int': 652} |
| `chromeRendererPssKb` | {'int': 652} |
| `chromeRenderers` | {'int': 652} |
| `chromeTabs` | {'int': 652} |
| `chromeTabsProbedProfiles` | {'int': 652} |
| `chromeUtilityPssKb` | {'int': 652} |
| `desktopPssKb` | {'int': 652} |
| `hostPssKb` | {'int': 652} |
| `kind` | {'str': 652} |
| `memAvailableKb` | {'int': 652} |
| `memTotalKb` | {'int': 652} |
| `otherPssKb` | {'int': 652} |
| `processes` | {'int': 652} |
| `pssFallbackProcesses` | {'int': 652} |

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
| `cpuMillicores` | {'int': 1281} |
| `display` | {'int': 1284} |
| `kind` | {'str': 1284} |
| `processes` | {'int': 1284} |
| `pssKb` | {'int': 1284} |
| `rendererMaxPssKb` | {'int': 1284} |
| `renderers` | {'int': 1284} |
| `tabs` | {'int': 1283} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
