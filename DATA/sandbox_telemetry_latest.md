# sandbox_telemetry_parse — 2026-10-16 14:02:06 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=512395 lines=1915
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1264 |
| `memory_sample` | 642 |
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
| `chromeBrowserPssKb` | {'int': 642} |
| `chromeGpuPssKb` | {'int': 642} |
| `chromeOtherPssKb` | {'int': 642} |
| `chromeProcesses` | {'int': 642} |
| `chromeProfiles` | {'int': 642} |
| `chromeRendererMaxPssKb` | {'int': 642} |
| `chromeRendererPssKb` | {'int': 642} |
| `chromeRenderers` | {'int': 642} |
| `chromeTabs` | {'int': 642} |
| `chromeTabsProbedProfiles` | {'int': 642} |
| `chromeUtilityPssKb` | {'int': 642} |
| `desktopPssKb` | {'int': 642} |
| `hostPssKb` | {'int': 642} |
| `kind` | {'str': 642} |
| `memAvailableKb` | {'int': 642} |
| `memTotalKb` | {'int': 642} |
| `otherPssKb` | {'int': 642} |
| `processes` | {'int': 642} |
| `pssFallbackProcesses` | {'int': 642} |

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
| `cpuMillicores` | {'int': 1261} |
| `display` | {'int': 1264} |
| `kind` | {'str': 1264} |
| `processes` | {'int': 1264} |
| `pssKb` | {'int': 1264} |
| `rendererMaxPssKb` | {'int': 1264} |
| `renderers` | {'int': 1264} |
| `tabs` | {'int': 1263} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
