# sandbox_telemetry_parse — 2026-10-13 04:55:46 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=834497 lines=1981
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1756 |
| `chrome_profile_sample` | 217 |
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
| `chromeBrowserPssKb` | {'int': 1756} |
| `chromeGpuPssKb` | {'int': 1756} |
| `chromeOtherPssKb` | {'int': 1756} |
| `chromeProcesses` | {'int': 1756} |
| `chromeProfiles` | {'int': 1756} |
| `chromeRendererMaxPssKb` | {'int': 1756} |
| `chromeRendererPssKb` | {'int': 1756} |
| `chromeRenderers` | {'int': 1756} |
| `chromeTabs` | {'int': 1756} |
| `chromeTabsProbedProfiles` | {'int': 1756} |
| `chromeUtilityPssKb` | {'int': 1756} |
| `desktopPssKb` | {'int': 1756} |
| `hostPssKb` | {'int': 1756} |
| `kind` | {'str': 1756} |
| `memAvailableKb` | {'int': 1756} |
| `memTotalKb` | {'int': 1756} |
| `otherPssKb` | {'int': 1756} |
| `processes` | {'int': 1756} |
| `pssFallbackProcesses` | {'int': 1756} |

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
| `cpuMillicores` | {'int': 216} |
| `display` | {'int': 217} |
| `kind` | {'str': 217} |
| `processes` | {'int': 217} |
| `pssKb` | {'int': 217} |
| `rendererMaxPssKb` | {'int': 217} |
| `renderers` | {'int': 217} |
| `tabs` | {'int': 217} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
