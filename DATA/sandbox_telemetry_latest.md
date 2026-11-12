# sandbox_telemetry_parse — 2026-11-12 23:33:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2374966 lines=5256
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5247 |
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
| `chromeBrowserPssKb` | {'int': 5247} |
| `chromeGpuPssKb` | {'int': 5247} |
| `chromeOtherPssKb` | {'int': 5247} |
| `chromeProcesses` | {'int': 5247} |
| `chromeProfiles` | {'int': 5247} |
| `chromeRendererMaxPssKb` | {'int': 5247} |
| `chromeRendererPssKb` | {'int': 5247} |
| `chromeRenderers` | {'int': 5247} |
| `chromeTabs` | {'int': 5247} |
| `chromeTabsProbedProfiles` | {'int': 5247} |
| `chromeUtilityPssKb` | {'int': 5247} |
| `desktopPssKb` | {'int': 5247} |
| `hostPssKb` | {'int': 5247} |
| `kind` | {'str': 5247} |
| `memAvailableKb` | {'int': 5247} |
| `memTotalKb` | {'int': 5247} |
| `otherPssKb` | {'int': 5247} |
| `processes` | {'int': 5247} |
| `pssFallbackProcesses` | {'int': 5247} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
