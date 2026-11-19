# sandbox_telemetry_parse — 2026-11-19 15:17:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1327530 lines=2943
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2934 |
| `egress_tunnel` | 5 |
| `boot_stage` | 3 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 2934} |
| `chromeGpuPssKb` | {'int': 2934} |
| `chromeOtherPssKb` | {'int': 2934} |
| `chromeProcesses` | {'int': 2934} |
| `chromeProfiles` | {'int': 2934} |
| `chromeRendererMaxPssKb` | {'int': 2934} |
| `chromeRendererPssKb` | {'int': 2934} |
| `chromeRenderers` | {'int': 2934} |
| `chromeTabs` | {'int': 2934} |
| `chromeTabsProbedProfiles` | {'int': 2934} |
| `chromeUtilityPssKb` | {'int': 2934} |
| `desktopPssKb` | {'int': 2934} |
| `hostPssKb` | {'int': 2934} |
| `kind` | {'str': 2934} |
| `memAvailableKb` | {'int': 2934} |
| `memTotalKb` | {'int': 2934} |
| `otherPssKb` | {'int': 2934} |
| `processes` | {'int': 2934} |
| `pssFallbackProcesses` | {'int': 2934} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
