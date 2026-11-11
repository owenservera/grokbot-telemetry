# sandbox_telemetry_parse — 2026-11-11 06:41:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1510040 lines=3345
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3336 |
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
| `chromeBrowserPssKb` | {'int': 3336} |
| `chromeGpuPssKb` | {'int': 3336} |
| `chromeOtherPssKb` | {'int': 3336} |
| `chromeProcesses` | {'int': 3336} |
| `chromeProfiles` | {'int': 3336} |
| `chromeRendererMaxPssKb` | {'int': 3336} |
| `chromeRendererPssKb` | {'int': 3336} |
| `chromeRenderers` | {'int': 3336} |
| `chromeTabs` | {'int': 3336} |
| `chromeTabsProbedProfiles` | {'int': 3336} |
| `chromeUtilityPssKb` | {'int': 3336} |
| `desktopPssKb` | {'int': 3336} |
| `hostPssKb` | {'int': 3336} |
| `kind` | {'str': 3336} |
| `memAvailableKb` | {'int': 3336} |
| `memTotalKb` | {'int': 3336} |
| `otherPssKb` | {'int': 3336} |
| `processes` | {'int': 3336} |
| `pssFallbackProcesses` | {'int': 3336} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
