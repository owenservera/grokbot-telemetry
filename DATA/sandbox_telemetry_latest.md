# sandbox_telemetry_parse — 2026-11-26 10:50:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3218350 lines=7128
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7113 |
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
| `chromeBrowserPssKb` | {'int': 7113} |
| `chromeGpuPssKb` | {'int': 7113} |
| `chromeOtherPssKb` | {'int': 7113} |
| `chromeProcesses` | {'int': 7113} |
| `chromeProfiles` | {'int': 7113} |
| `chromeRendererMaxPssKb` | {'int': 7113} |
| `chromeRendererPssKb` | {'int': 7113} |
| `chromeRenderers` | {'int': 7113} |
| `chromeTabs` | {'int': 7113} |
| `chromeTabsProbedProfiles` | {'int': 7113} |
| `chromeUtilityPssKb` | {'int': 7113} |
| `desktopPssKb` | {'int': 7113} |
| `hostPssKb` | {'int': 7113} |
| `kind` | {'str': 7113} |
| `memAvailableKb` | {'int': 7113} |
| `memTotalKb` | {'int': 7113} |
| `otherPssKb` | {'int': 7113} |
| `processes` | {'int': 7113} |
| `pssFallbackProcesses` | {'int': 7113} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
