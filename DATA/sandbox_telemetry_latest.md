# sandbox_telemetry_parse — 2026-11-11 03:33:18 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1454880 lines=3223
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3214 |
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
| `chromeBrowserPssKb` | {'int': 3214} |
| `chromeGpuPssKb` | {'int': 3214} |
| `chromeOtherPssKb` | {'int': 3214} |
| `chromeProcesses` | {'int': 3214} |
| `chromeProfiles` | {'int': 3214} |
| `chromeRendererMaxPssKb` | {'int': 3214} |
| `chromeRendererPssKb` | {'int': 3214} |
| `chromeRenderers` | {'int': 3214} |
| `chromeTabs` | {'int': 3214} |
| `chromeTabsProbedProfiles` | {'int': 3214} |
| `chromeUtilityPssKb` | {'int': 3214} |
| `desktopPssKb` | {'int': 3214} |
| `hostPssKb` | {'int': 3214} |
| `kind` | {'str': 3214} |
| `memAvailableKb` | {'int': 3214} |
| `memTotalKb` | {'int': 3214} |
| `otherPssKb` | {'int': 3214} |
| `processes` | {'int': 3214} |
| `pssFallbackProcesses` | {'int': 3214} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
