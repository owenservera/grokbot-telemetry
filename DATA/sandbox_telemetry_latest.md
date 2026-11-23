# sandbox_telemetry_parse — 2026-11-23 18:33:26 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1944097 lines=4311
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4296 |
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
| `chromeBrowserPssKb` | {'int': 4296} |
| `chromeGpuPssKb` | {'int': 4296} |
| `chromeOtherPssKb` | {'int': 4296} |
| `chromeProcesses` | {'int': 4296} |
| `chromeProfiles` | {'int': 4296} |
| `chromeRendererMaxPssKb` | {'int': 4296} |
| `chromeRendererPssKb` | {'int': 4296} |
| `chromeRenderers` | {'int': 4296} |
| `chromeTabs` | {'int': 4296} |
| `chromeTabsProbedProfiles` | {'int': 4296} |
| `chromeUtilityPssKb` | {'int': 4296} |
| `desktopPssKb` | {'int': 4296} |
| `hostPssKb` | {'int': 4296} |
| `kind` | {'str': 4296} |
| `memAvailableKb` | {'int': 4296} |
| `memTotalKb` | {'int': 4296} |
| `otherPssKb` | {'int': 4296} |
| `processes` | {'int': 4296} |
| `pssFallbackProcesses` | {'int': 4296} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
