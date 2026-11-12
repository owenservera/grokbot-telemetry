# sandbox_telemetry_parse — 2026-11-12 02:08:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1924591 lines=4261
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4252 |
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
| `chromeBrowserPssKb` | {'int': 4252} |
| `chromeGpuPssKb` | {'int': 4252} |
| `chromeOtherPssKb` | {'int': 4252} |
| `chromeProcesses` | {'int': 4252} |
| `chromeProfiles` | {'int': 4252} |
| `chromeRendererMaxPssKb` | {'int': 4252} |
| `chromeRendererPssKb` | {'int': 4252} |
| `chromeRenderers` | {'int': 4252} |
| `chromeTabs` | {'int': 4252} |
| `chromeTabsProbedProfiles` | {'int': 4252} |
| `chromeUtilityPssKb` | {'int': 4252} |
| `desktopPssKb` | {'int': 4252} |
| `hostPssKb` | {'int': 4252} |
| `kind` | {'str': 4252} |
| `memAvailableKb` | {'int': 4252} |
| `memTotalKb` | {'int': 4252} |
| `otherPssKb` | {'int': 4252} |
| `processes` | {'int': 4252} |
| `pssFallbackProcesses` | {'int': 4252} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
