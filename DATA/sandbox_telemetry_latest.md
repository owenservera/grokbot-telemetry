# sandbox_telemetry_parse — 2026-11-24 13:25:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2300973 lines=5100
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5085 |
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
| `chromeBrowserPssKb` | {'int': 5085} |
| `chromeGpuPssKb` | {'int': 5085} |
| `chromeOtherPssKb` | {'int': 5085} |
| `chromeProcesses` | {'int': 5085} |
| `chromeProfiles` | {'int': 5085} |
| `chromeRendererMaxPssKb` | {'int': 5085} |
| `chromeRendererPssKb` | {'int': 5085} |
| `chromeRenderers` | {'int': 5085} |
| `chromeTabs` | {'int': 5085} |
| `chromeTabsProbedProfiles` | {'int': 5085} |
| `chromeUtilityPssKb` | {'int': 5085} |
| `desktopPssKb` | {'int': 5085} |
| `hostPssKb` | {'int': 5085} |
| `kind` | {'str': 5085} |
| `memAvailableKb` | {'int': 5085} |
| `memTotalKb` | {'int': 5085} |
| `otherPssKb` | {'int': 5085} |
| `processes` | {'int': 5085} |
| `pssFallbackProcesses` | {'int': 5085} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
