# sandbox_telemetry_parse — 2026-11-28 22:42:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1091999 lines=2419
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2411 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 2411} |
| `chromeGpuPssKb` | {'int': 2411} |
| `chromeOtherPssKb` | {'int': 2411} |
| `chromeProcesses` | {'int': 2411} |
| `chromeProfiles` | {'int': 2411} |
| `chromeRendererMaxPssKb` | {'int': 2411} |
| `chromeRendererPssKb` | {'int': 2411} |
| `chromeRenderers` | {'int': 2411} |
| `chromeTabs` | {'int': 2411} |
| `chromeTabsProbedProfiles` | {'int': 2411} |
| `chromeUtilityPssKb` | {'int': 2411} |
| `desktopPssKb` | {'int': 2411} |
| `hostPssKb` | {'int': 2411} |
| `kind` | {'str': 2411} |
| `memAvailableKb` | {'int': 2411} |
| `memTotalKb` | {'int': 2411} |
| `otherPssKb` | {'int': 2411} |
| `processes` | {'int': 2411} |
| `pssFallbackProcesses` | {'int': 2411} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
