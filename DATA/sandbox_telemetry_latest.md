# sandbox_telemetry_parse — 2026-11-24 05:19:34 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2146334 lines=4758
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4743 |
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
| `chromeBrowserPssKb` | {'int': 4743} |
| `chromeGpuPssKb` | {'int': 4743} |
| `chromeOtherPssKb` | {'int': 4743} |
| `chromeProcesses` | {'int': 4743} |
| `chromeProfiles` | {'int': 4743} |
| `chromeRendererMaxPssKb` | {'int': 4743} |
| `chromeRendererPssKb` | {'int': 4743} |
| `chromeRenderers` | {'int': 4743} |
| `chromeTabs` | {'int': 4743} |
| `chromeTabsProbedProfiles` | {'int': 4743} |
| `chromeUtilityPssKb` | {'int': 4743} |
| `desktopPssKb` | {'int': 4743} |
| `hostPssKb` | {'int': 4743} |
| `kind` | {'str': 4743} |
| `memAvailableKb` | {'int': 4743} |
| `memTotalKb` | {'int': 4743} |
| `otherPssKb` | {'int': 4743} |
| `processes` | {'int': 4743} |
| `pssFallbackProcesses` | {'int': 4743} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
