# sandbox_telemetry_parse — 2026-11-06 23:44:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=218289 lines=490
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 481 |
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
| `chromeBrowserPssKb` | {'int': 481} |
| `chromeGpuPssKb` | {'int': 481} |
| `chromeOtherPssKb` | {'int': 481} |
| `chromeProcesses` | {'int': 481} |
| `chromeProfiles` | {'int': 481} |
| `chromeRendererMaxPssKb` | {'int': 481} |
| `chromeRendererPssKb` | {'int': 481} |
| `chromeRenderers` | {'int': 481} |
| `chromeTabs` | {'int': 481} |
| `chromeTabsProbedProfiles` | {'int': 481} |
| `chromeUtilityPssKb` | {'int': 481} |
| `desktopPssKb` | {'int': 481} |
| `hostPssKb` | {'int': 481} |
| `kind` | {'str': 481} |
| `memAvailableKb` | {'int': 481} |
| `memTotalKb` | {'int': 481} |
| `otherPssKb` | {'int': 481} |
| `processes` | {'int': 481} |
| `pssFallbackProcesses` | {'int': 481} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
