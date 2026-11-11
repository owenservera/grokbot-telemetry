# sandbox_telemetry_parse — 2026-11-11 19:26:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1781539 lines=3945
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3936 |
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
| `chromeBrowserPssKb` | {'int': 3936} |
| `chromeGpuPssKb` | {'int': 3936} |
| `chromeOtherPssKb` | {'int': 3936} |
| `chromeProcesses` | {'int': 3936} |
| `chromeProfiles` | {'int': 3936} |
| `chromeRendererMaxPssKb` | {'int': 3936} |
| `chromeRendererPssKb` | {'int': 3936} |
| `chromeRenderers` | {'int': 3936} |
| `chromeTabs` | {'int': 3936} |
| `chromeTabsProbedProfiles` | {'int': 3936} |
| `chromeUtilityPssKb` | {'int': 3936} |
| `desktopPssKb` | {'int': 3936} |
| `hostPssKb` | {'int': 3936} |
| `kind` | {'str': 3936} |
| `memAvailableKb` | {'int': 3936} |
| `memTotalKb` | {'int': 3936} |
| `otherPssKb` | {'int': 3936} |
| `processes` | {'int': 3936} |
| `pssFallbackProcesses` | {'int': 3936} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
