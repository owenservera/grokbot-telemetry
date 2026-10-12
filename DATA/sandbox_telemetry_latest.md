# sandbox_telemetry_parse — 2026-10-13 00:53:04 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=734552 lines=1667
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1599 |
| `chrome_profile_sample` | 60 |
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
| `chromeBrowserPssKb` | {'int': 1599} |
| `chromeGpuPssKb` | {'int': 1599} |
| `chromeOtherPssKb` | {'int': 1599} |
| `chromeProcesses` | {'int': 1599} |
| `chromeProfiles` | {'int': 1599} |
| `chromeRendererMaxPssKb` | {'int': 1599} |
| `chromeRendererPssKb` | {'int': 1599} |
| `chromeRenderers` | {'int': 1599} |
| `chromeTabs` | {'int': 1599} |
| `chromeTabsProbedProfiles` | {'int': 1599} |
| `chromeUtilityPssKb` | {'int': 1599} |
| `desktopPssKb` | {'int': 1599} |
| `hostPssKb` | {'int': 1599} |
| `kind` | {'str': 1599} |
| `memAvailableKb` | {'int': 1599} |
| `memTotalKb` | {'int': 1599} |
| `otherPssKb` | {'int': 1599} |
| `processes` | {'int': 1599} |
| `pssFallbackProcesses` | {'int': 1599} |

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
| `cpuMillicores` | {'int': 59} |
| `display` | {'int': 60} |
| `kind` | {'str': 60} |
| `processes` | {'int': 60} |
| `pssKb` | {'int': 60} |
| `rendererMaxPssKb` | {'int': 60} |
| `renderers` | {'int': 60} |
| `tabs` | {'int': 60} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
