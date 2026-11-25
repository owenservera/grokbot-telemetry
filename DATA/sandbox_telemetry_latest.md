# sandbox_telemetry_parse — 2026-11-25 19:14:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2886305 lines=6394
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6379 |
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
| `chromeBrowserPssKb` | {'int': 6379} |
| `chromeGpuPssKb` | {'int': 6379} |
| `chromeOtherPssKb` | {'int': 6379} |
| `chromeProcesses` | {'int': 6379} |
| `chromeProfiles` | {'int': 6379} |
| `chromeRendererMaxPssKb` | {'int': 6379} |
| `chromeRendererPssKb` | {'int': 6379} |
| `chromeRenderers` | {'int': 6379} |
| `chromeTabs` | {'int': 6379} |
| `chromeTabsProbedProfiles` | {'int': 6379} |
| `chromeUtilityPssKb` | {'int': 6379} |
| `desktopPssKb` | {'int': 6379} |
| `hostPssKb` | {'int': 6379} |
| `kind` | {'str': 6379} |
| `memAvailableKb` | {'int': 6379} |
| `memTotalKb` | {'int': 6379} |
| `otherPssKb` | {'int': 6379} |
| `processes` | {'int': 6379} |
| `pssFallbackProcesses` | {'int': 6379} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
