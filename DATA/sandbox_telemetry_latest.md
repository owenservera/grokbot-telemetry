# sandbox_telemetry_parse — 2026-11-25 11:32:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2739349 lines=6069
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6054 |
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
| `chromeBrowserPssKb` | {'int': 6054} |
| `chromeGpuPssKb` | {'int': 6054} |
| `chromeOtherPssKb` | {'int': 6054} |
| `chromeProcesses` | {'int': 6054} |
| `chromeProfiles` | {'int': 6054} |
| `chromeRendererMaxPssKb` | {'int': 6054} |
| `chromeRendererPssKb` | {'int': 6054} |
| `chromeRenderers` | {'int': 6054} |
| `chromeTabs` | {'int': 6054} |
| `chromeTabsProbedProfiles` | {'int': 6054} |
| `chromeUtilityPssKb` | {'int': 6054} |
| `desktopPssKb` | {'int': 6054} |
| `hostPssKb` | {'int': 6054} |
| `kind` | {'str': 6054} |
| `memAvailableKb` | {'int': 6054} |
| `memTotalKb` | {'int': 6054} |
| `otherPssKb` | {'int': 6054} |
| `processes` | {'int': 6054} |
| `pssFallbackProcesses` | {'int': 6054} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
