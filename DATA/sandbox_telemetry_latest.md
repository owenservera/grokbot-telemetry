# sandbox_telemetry_parse — 2026-10-16 23:03:53 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=904979 lines=3382
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 2242 |
| `memory_sample` | 1131 |
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
| `chromeBrowserPssKb` | {'int': 1131} |
| `chromeGpuPssKb` | {'int': 1131} |
| `chromeOtherPssKb` | {'int': 1131} |
| `chromeProcesses` | {'int': 1131} |
| `chromeProfiles` | {'int': 1131} |
| `chromeRendererMaxPssKb` | {'int': 1131} |
| `chromeRendererPssKb` | {'int': 1131} |
| `chromeRenderers` | {'int': 1131} |
| `chromeTabs` | {'int': 1131} |
| `chromeTabsProbedProfiles` | {'int': 1131} |
| `chromeUtilityPssKb` | {'int': 1131} |
| `desktopPssKb` | {'int': 1131} |
| `hostPssKb` | {'int': 1131} |
| `kind` | {'str': 1131} |
| `memAvailableKb` | {'int': 1131} |
| `memTotalKb` | {'int': 1131} |
| `otherPssKb` | {'int': 1131} |
| `processes` | {'int': 1131} |
| `pssFallbackProcesses` | {'int': 1131} |

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
| `cpuMillicores` | {'int': 2239} |
| `display` | {'int': 2242} |
| `kind` | {'str': 2242} |
| `processes` | {'int': 2242} |
| `pssKb` | {'int': 2242} |
| `rendererMaxPssKb` | {'int': 2242} |
| `renderers` | {'int': 2242} |
| `tabs` | {'int': 2241} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
