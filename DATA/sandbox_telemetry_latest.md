# sandbox_telemetry_parse — 2026-11-24 05:23:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2148146 lines=4762
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4747 |
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
| `chromeBrowserPssKb` | {'int': 4747} |
| `chromeGpuPssKb` | {'int': 4747} |
| `chromeOtherPssKb` | {'int': 4747} |
| `chromeProcesses` | {'int': 4747} |
| `chromeProfiles` | {'int': 4747} |
| `chromeRendererMaxPssKb` | {'int': 4747} |
| `chromeRendererPssKb` | {'int': 4747} |
| `chromeRenderers` | {'int': 4747} |
| `chromeTabs` | {'int': 4747} |
| `chromeTabsProbedProfiles` | {'int': 4747} |
| `chromeUtilityPssKb` | {'int': 4747} |
| `desktopPssKb` | {'int': 4747} |
| `hostPssKb` | {'int': 4747} |
| `kind` | {'str': 4747} |
| `memAvailableKb` | {'int': 4747} |
| `memTotalKb` | {'int': 4747} |
| `otherPssKb` | {'int': 4747} |
| `processes` | {'int': 4747} |
| `pssFallbackProcesses` | {'int': 4747} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
