# sandbox_telemetry_parse — 2026-11-12 19:12:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2285812 lines=5059
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5050 |
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
| `chromeBrowserPssKb` | {'int': 5050} |
| `chromeGpuPssKb` | {'int': 5050} |
| `chromeOtherPssKb` | {'int': 5050} |
| `chromeProcesses` | {'int': 5050} |
| `chromeProfiles` | {'int': 5050} |
| `chromeRendererMaxPssKb` | {'int': 5050} |
| `chromeRendererPssKb` | {'int': 5050} |
| `chromeRenderers` | {'int': 5050} |
| `chromeTabs` | {'int': 5050} |
| `chromeTabsProbedProfiles` | {'int': 5050} |
| `chromeUtilityPssKb` | {'int': 5050} |
| `desktopPssKb` | {'int': 5050} |
| `hostPssKb` | {'int': 5050} |
| `kind` | {'str': 5050} |
| `memAvailableKb` | {'int': 5050} |
| `memTotalKb` | {'int': 5050} |
| `otherPssKb` | {'int': 5050} |
| `processes` | {'int': 5050} |
| `pssFallbackProcesses` | {'int': 5050} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
