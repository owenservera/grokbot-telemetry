# sandbox_telemetry_parse — 2026-10-13 15:59:37 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1150497 lines=2973
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2252 |
| `chrome_profile_sample` | 713 |
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
| `chromeBrowserPssKb` | {'int': 2252} |
| `chromeGpuPssKb` | {'int': 2252} |
| `chromeOtherPssKb` | {'int': 2252} |
| `chromeProcesses` | {'int': 2252} |
| `chromeProfiles` | {'int': 2252} |
| `chromeRendererMaxPssKb` | {'int': 2252} |
| `chromeRendererPssKb` | {'int': 2252} |
| `chromeRenderers` | {'int': 2252} |
| `chromeTabs` | {'int': 2252} |
| `chromeTabsProbedProfiles` | {'int': 2252} |
| `chromeUtilityPssKb` | {'int': 2252} |
| `desktopPssKb` | {'int': 2252} |
| `hostPssKb` | {'int': 2252} |
| `kind` | {'str': 2252} |
| `memAvailableKb` | {'int': 2252} |
| `memTotalKb` | {'int': 2252} |
| `otherPssKb` | {'int': 2252} |
| `processes` | {'int': 2252} |
| `pssFallbackProcesses` | {'int': 2252} |

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
| `cpuMillicores` | {'int': 712} |
| `display` | {'int': 713} |
| `kind` | {'str': 713} |
| `processes` | {'int': 713} |
| `pssKb` | {'int': 713} |
| `rendererMaxPssKb` | {'int': 713} |
| `renderers` | {'int': 713} |
| `tabs` | {'int': 713} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
