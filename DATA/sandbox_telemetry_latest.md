# sandbox_telemetry_parse — 2026-11-26 07:21:21 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3139157 lines=6953
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6938 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 6938} |
| `chromeGpuPssKb` | {'int': 6938} |
| `chromeOtherPssKb` | {'int': 6938} |
| `chromeProcesses` | {'int': 6938} |
| `chromeProfiles` | {'int': 6938} |
| `chromeRendererMaxPssKb` | {'int': 6938} |
| `chromeRendererPssKb` | {'int': 6938} |
| `chromeRenderers` | {'int': 6938} |
| `chromeTabs` | {'int': 6938} |
| `chromeTabsProbedProfiles` | {'int': 6938} |
| `chromeUtilityPssKb` | {'int': 6938} |
| `desktopPssKb` | {'int': 6938} |
| `hostPssKb` | {'int': 6938} |
| `kind` | {'str': 6938} |
| `memAvailableKb` | {'int': 6938} |
| `memTotalKb` | {'int': 6938} |
| `otherPssKb` | {'int': 6938} |
| `processes` | {'int': 6938} |
| `pssFallbackProcesses` | {'int': 6938} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
