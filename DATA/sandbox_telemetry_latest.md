# sandbox_telemetry_parse — 2026-11-25 17:17:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2848784 lines=6311
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6296 |
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
| `chromeBrowserPssKb` | {'int': 6296} |
| `chromeGpuPssKb` | {'int': 6296} |
| `chromeOtherPssKb` | {'int': 6296} |
| `chromeProcesses` | {'int': 6296} |
| `chromeProfiles` | {'int': 6296} |
| `chromeRendererMaxPssKb` | {'int': 6296} |
| `chromeRendererPssKb` | {'int': 6296} |
| `chromeRenderers` | {'int': 6296} |
| `chromeTabs` | {'int': 6296} |
| `chromeTabsProbedProfiles` | {'int': 6296} |
| `chromeUtilityPssKb` | {'int': 6296} |
| `desktopPssKb` | {'int': 6296} |
| `hostPssKb` | {'int': 6296} |
| `kind` | {'str': 6296} |
| `memAvailableKb` | {'int': 6296} |
| `memTotalKb` | {'int': 6296} |
| `otherPssKb` | {'int': 6296} |
| `processes` | {'int': 6296} |
| `pssFallbackProcesses` | {'int': 6296} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
