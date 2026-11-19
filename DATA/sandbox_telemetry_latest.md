# sandbox_telemetry_parse — 2026-11-19 21:44:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1454423 lines=3225
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3214 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
