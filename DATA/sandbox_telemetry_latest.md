# sandbox_telemetry_parse — 2026-11-07 07:55:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=368879 lines=823
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 814 |
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
| `chromeBrowserPssKb` | {'int': 814} |
| `chromeGpuPssKb` | {'int': 814} |
| `chromeOtherPssKb` | {'int': 814} |
| `chromeProcesses` | {'int': 814} |
| `chromeProfiles` | {'int': 814} |
| `chromeRendererMaxPssKb` | {'int': 814} |
| `chromeRendererPssKb` | {'int': 814} |
| `chromeRenderers` | {'int': 814} |
| `chromeTabs` | {'int': 814} |
| `chromeTabsProbedProfiles` | {'int': 814} |
| `chromeUtilityPssKb` | {'int': 814} |
| `desktopPssKb` | {'int': 814} |
| `hostPssKb` | {'int': 814} |
| `kind` | {'str': 814} |
| `memAvailableKb` | {'int': 814} |
| `memTotalKb` | {'int': 814} |
| `otherPssKb` | {'int': 814} |
| `processes` | {'int': 814} |
| `pssFallbackProcesses` | {'int': 814} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
