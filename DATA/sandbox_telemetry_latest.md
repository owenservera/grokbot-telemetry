# sandbox_telemetry_parse — 2026-10-16 14:30:11 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=534869 lines=1999
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1320 |
| `memory_sample` | 670 |
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
| `chromeBrowserPssKb` | {'int': 670} |
| `chromeGpuPssKb` | {'int': 670} |
| `chromeOtherPssKb` | {'int': 670} |
| `chromeProcesses` | {'int': 670} |
| `chromeProfiles` | {'int': 670} |
| `chromeRendererMaxPssKb` | {'int': 670} |
| `chromeRendererPssKb` | {'int': 670} |
| `chromeRenderers` | {'int': 670} |
| `chromeTabs` | {'int': 670} |
| `chromeTabsProbedProfiles` | {'int': 670} |
| `chromeUtilityPssKb` | {'int': 670} |
| `desktopPssKb` | {'int': 670} |
| `hostPssKb` | {'int': 670} |
| `kind` | {'str': 670} |
| `memAvailableKb` | {'int': 670} |
| `memTotalKb` | {'int': 670} |
| `otherPssKb` | {'int': 670} |
| `processes` | {'int': 670} |
| `pssFallbackProcesses` | {'int': 670} |

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
| `cpuMillicores` | {'int': 1317} |
| `display` | {'int': 1320} |
| `kind` | {'str': 1320} |
| `processes` | {'int': 1320} |
| `pssKb` | {'int': 1320} |
| `rendererMaxPssKb` | {'int': 1320} |
| `renderers` | {'int': 1320} |
| `tabs` | {'int': 1319} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
