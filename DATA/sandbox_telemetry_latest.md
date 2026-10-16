# sandbox_telemetry_parse — 2026-10-16 04:42:37 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=102369 lines=382
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 242 |
| `memory_sample` | 131 |
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
| `chromeBrowserPssKb` | {'int': 131} |
| `chromeGpuPssKb` | {'int': 131} |
| `chromeOtherPssKb` | {'int': 131} |
| `chromeProcesses` | {'int': 131} |
| `chromeProfiles` | {'int': 131} |
| `chromeRendererMaxPssKb` | {'int': 131} |
| `chromeRendererPssKb` | {'int': 131} |
| `chromeRenderers` | {'int': 131} |
| `chromeTabs` | {'int': 131} |
| `chromeTabsProbedProfiles` | {'int': 131} |
| `chromeUtilityPssKb` | {'int': 131} |
| `desktopPssKb` | {'int': 131} |
| `hostPssKb` | {'int': 131} |
| `kind` | {'str': 131} |
| `memAvailableKb` | {'int': 131} |
| `memTotalKb` | {'int': 131} |
| `otherPssKb` | {'int': 131} |
| `processes` | {'int': 131} |
| `pssFallbackProcesses` | {'int': 131} |

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
| `cpuMillicores` | {'int': 239} |
| `display` | {'int': 242} |
| `kind` | {'str': 242} |
| `processes` | {'int': 242} |
| `pssKb` | {'int': 242} |
| `rendererMaxPssKb` | {'int': 242} |
| `renderers` | {'int': 242} |
| `tabs` | {'int': 241} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
