# sandbox_telemetry_parse — 2026-11-12 03:24:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1947683 lines=4312
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4303 |
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
| `chromeBrowserPssKb` | {'int': 4303} |
| `chromeGpuPssKb` | {'int': 4303} |
| `chromeOtherPssKb` | {'int': 4303} |
| `chromeProcesses` | {'int': 4303} |
| `chromeProfiles` | {'int': 4303} |
| `chromeRendererMaxPssKb` | {'int': 4303} |
| `chromeRendererPssKb` | {'int': 4303} |
| `chromeRenderers` | {'int': 4303} |
| `chromeTabs` | {'int': 4303} |
| `chromeTabsProbedProfiles` | {'int': 4303} |
| `chromeUtilityPssKb` | {'int': 4303} |
| `desktopPssKb` | {'int': 4303} |
| `hostPssKb` | {'int': 4303} |
| `kind` | {'str': 4303} |
| `memAvailableKb` | {'int': 4303} |
| `memTotalKb` | {'int': 4303} |
| `otherPssKb` | {'int': 4303} |
| `processes` | {'int': 4303} |
| `pssFallbackProcesses` | {'int': 4303} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
