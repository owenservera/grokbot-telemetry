# sandbox_telemetry_parse — 2026-10-13 11:37:24 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1048343 lines=2653
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2092 |
| `chrome_profile_sample` | 553 |
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
| `chromeBrowserPssKb` | {'int': 2092} |
| `chromeGpuPssKb` | {'int': 2092} |
| `chromeOtherPssKb` | {'int': 2092} |
| `chromeProcesses` | {'int': 2092} |
| `chromeProfiles` | {'int': 2092} |
| `chromeRendererMaxPssKb` | {'int': 2092} |
| `chromeRendererPssKb` | {'int': 2092} |
| `chromeRenderers` | {'int': 2092} |
| `chromeTabs` | {'int': 2092} |
| `chromeTabsProbedProfiles` | {'int': 2092} |
| `chromeUtilityPssKb` | {'int': 2092} |
| `desktopPssKb` | {'int': 2092} |
| `hostPssKb` | {'int': 2092} |
| `kind` | {'str': 2092} |
| `memAvailableKb` | {'int': 2092} |
| `memTotalKb` | {'int': 2092} |
| `otherPssKb` | {'int': 2092} |
| `processes` | {'int': 2092} |
| `pssFallbackProcesses` | {'int': 2092} |

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
| `cpuMillicores` | {'int': 552} |
| `display` | {'int': 553} |
| `kind` | {'str': 553} |
| `processes` | {'int': 553} |
| `pssKb` | {'int': 553} |
| `rendererMaxPssKb` | {'int': 553} |
| `renderers` | {'int': 553} |
| `tabs` | {'int': 553} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
