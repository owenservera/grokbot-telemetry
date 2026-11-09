# sandbox_telemetry_parse — 2026-11-09 09:10:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=586917 lines=1305
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1296 |
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
| `chromeBrowserPssKb` | {'int': 1296} |
| `chromeGpuPssKb` | {'int': 1296} |
| `chromeOtherPssKb` | {'int': 1296} |
| `chromeProcesses` | {'int': 1296} |
| `chromeProfiles` | {'int': 1296} |
| `chromeRendererMaxPssKb` | {'int': 1296} |
| `chromeRendererPssKb` | {'int': 1296} |
| `chromeRenderers` | {'int': 1296} |
| `chromeTabs` | {'int': 1296} |
| `chromeTabsProbedProfiles` | {'int': 1296} |
| `chromeUtilityPssKb` | {'int': 1296} |
| `desktopPssKb` | {'int': 1296} |
| `hostPssKb` | {'int': 1296} |
| `kind` | {'str': 1296} |
| `memAvailableKb` | {'int': 1296} |
| `memTotalKb` | {'int': 1296} |
| `otherPssKb` | {'int': 1296} |
| `processes` | {'int': 1296} |
| `pssFallbackProcesses` | {'int': 1296} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
