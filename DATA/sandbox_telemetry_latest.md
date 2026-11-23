# sandbox_telemetry_parse — 2026-11-23 23:27:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2035548 lines=4513
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4498 |
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
| `chromeBrowserPssKb` | {'int': 4498} |
| `chromeGpuPssKb` | {'int': 4498} |
| `chromeOtherPssKb` | {'int': 4498} |
| `chromeProcesses` | {'int': 4498} |
| `chromeProfiles` | {'int': 4498} |
| `chromeRendererMaxPssKb` | {'int': 4498} |
| `chromeRendererPssKb` | {'int': 4498} |
| `chromeRenderers` | {'int': 4498} |
| `chromeTabs` | {'int': 4498} |
| `chromeTabsProbedProfiles` | {'int': 4498} |
| `chromeUtilityPssKb` | {'int': 4498} |
| `desktopPssKb` | {'int': 4498} |
| `hostPssKb` | {'int': 4498} |
| `kind` | {'str': 4498} |
| `memAvailableKb` | {'int': 4498} |
| `memTotalKb` | {'int': 4498} |
| `otherPssKb` | {'int': 4498} |
| `processes` | {'int': 4498} |
| `pssFallbackProcesses` | {'int': 4498} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
