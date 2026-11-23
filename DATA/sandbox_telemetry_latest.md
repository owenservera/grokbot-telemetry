# sandbox_telemetry_parse — 2026-11-23 21:43:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1998881 lines=4432
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4417 |
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
| `chromeBrowserPssKb` | {'int': 4417} |
| `chromeGpuPssKb` | {'int': 4417} |
| `chromeOtherPssKb` | {'int': 4417} |
| `chromeProcesses` | {'int': 4417} |
| `chromeProfiles` | {'int': 4417} |
| `chromeRendererMaxPssKb` | {'int': 4417} |
| `chromeRendererPssKb` | {'int': 4417} |
| `chromeRenderers` | {'int': 4417} |
| `chromeTabs` | {'int': 4417} |
| `chromeTabsProbedProfiles` | {'int': 4417} |
| `chromeUtilityPssKb` | {'int': 4417} |
| `desktopPssKb` | {'int': 4417} |
| `hostPssKb` | {'int': 4417} |
| `kind` | {'str': 4417} |
| `memAvailableKb` | {'int': 4417} |
| `memTotalKb` | {'int': 4417} |
| `otherPssKb` | {'int': 4417} |
| `processes` | {'int': 4417} |
| `pssFallbackProcesses` | {'int': 4417} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
