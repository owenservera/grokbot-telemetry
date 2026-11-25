# sandbox_telemetry_parse — 2026-11-25 23:17:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2967697 lines=6574
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6559 |
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
| `chromeBrowserPssKb` | {'int': 6559} |
| `chromeGpuPssKb` | {'int': 6559} |
| `chromeOtherPssKb` | {'int': 6559} |
| `chromeProcesses` | {'int': 6559} |
| `chromeProfiles` | {'int': 6559} |
| `chromeRendererMaxPssKb` | {'int': 6559} |
| `chromeRendererPssKb` | {'int': 6559} |
| `chromeRenderers` | {'int': 6559} |
| `chromeTabs` | {'int': 6559} |
| `chromeTabsProbedProfiles` | {'int': 6559} |
| `chromeUtilityPssKb` | {'int': 6559} |
| `desktopPssKb` | {'int': 6559} |
| `hostPssKb` | {'int': 6559} |
| `kind` | {'str': 6559} |
| `memAvailableKb` | {'int': 6559} |
| `memTotalKb` | {'int': 6559} |
| `otherPssKb` | {'int': 6559} |
| `processes` | {'int': 6559} |
| `pssFallbackProcesses` | {'int': 6559} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
