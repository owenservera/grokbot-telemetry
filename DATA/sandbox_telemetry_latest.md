# sandbox_telemetry_parse — 2026-10-16 10:25:55 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=357537 lines=1336
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 878 |
| `memory_sample` | 449 |
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
| `chromeBrowserPssKb` | {'int': 449} |
| `chromeGpuPssKb` | {'int': 449} |
| `chromeOtherPssKb` | {'int': 449} |
| `chromeProcesses` | {'int': 449} |
| `chromeProfiles` | {'int': 449} |
| `chromeRendererMaxPssKb` | {'int': 449} |
| `chromeRendererPssKb` | {'int': 449} |
| `chromeRenderers` | {'int': 449} |
| `chromeTabs` | {'int': 449} |
| `chromeTabsProbedProfiles` | {'int': 449} |
| `chromeUtilityPssKb` | {'int': 449} |
| `desktopPssKb` | {'int': 449} |
| `hostPssKb` | {'int': 449} |
| `kind` | {'str': 449} |
| `memAvailableKb` | {'int': 449} |
| `memTotalKb` | {'int': 449} |
| `otherPssKb` | {'int': 449} |
| `processes` | {'int': 449} |
| `pssFallbackProcesses` | {'int': 449} |

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
| `cpuMillicores` | {'int': 875} |
| `display` | {'int': 878} |
| `kind` | {'str': 878} |
| `processes` | {'int': 878} |
| `pssKb` | {'int': 878} |
| `rendererMaxPssKb` | {'int': 878} |
| `renderers` | {'int': 878} |
| `tabs` | {'int': 877} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
