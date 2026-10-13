# sandbox_telemetry_parse — 2026-10-13 10:05:25 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=999311 lines=2499
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2015 |
| `chrome_profile_sample` | 476 |
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
| `chromeBrowserPssKb` | {'int': 2015} |
| `chromeGpuPssKb` | {'int': 2015} |
| `chromeOtherPssKb` | {'int': 2015} |
| `chromeProcesses` | {'int': 2015} |
| `chromeProfiles` | {'int': 2015} |
| `chromeRendererMaxPssKb` | {'int': 2015} |
| `chromeRendererPssKb` | {'int': 2015} |
| `chromeRenderers` | {'int': 2015} |
| `chromeTabs` | {'int': 2015} |
| `chromeTabsProbedProfiles` | {'int': 2015} |
| `chromeUtilityPssKb` | {'int': 2015} |
| `desktopPssKb` | {'int': 2015} |
| `hostPssKb` | {'int': 2015} |
| `kind` | {'str': 2015} |
| `memAvailableKb` | {'int': 2015} |
| `memTotalKb` | {'int': 2015} |
| `otherPssKb` | {'int': 2015} |
| `processes` | {'int': 2015} |
| `pssFallbackProcesses` | {'int': 2015} |

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
| `cpuMillicores` | {'int': 475} |
| `display` | {'int': 476} |
| `kind` | {'str': 476} |
| `processes` | {'int': 476} |
| `pssKb` | {'int': 476} |
| `rendererMaxPssKb` | {'int': 476} |
| `renderers` | {'int': 476} |
| `tabs` | {'int': 476} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
