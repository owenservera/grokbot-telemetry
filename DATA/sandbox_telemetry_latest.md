# sandbox_telemetry_parse — 2026-11-26 20:03:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=63954 lines=148
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 140 |
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
| `chromeBrowserPssKb` | {'int': 140} |
| `chromeGpuPssKb` | {'int': 140} |
| `chromeOtherPssKb` | {'int': 140} |
| `chromeProcesses` | {'int': 140} |
| `chromeProfiles` | {'int': 140} |
| `chromeRendererMaxPssKb` | {'int': 140} |
| `chromeRendererPssKb` | {'int': 140} |
| `chromeRenderers` | {'int': 140} |
| `chromeTabs` | {'int': 140} |
| `chromeTabsProbedProfiles` | {'int': 140} |
| `chromeUtilityPssKb` | {'int': 140} |
| `desktopPssKb` | {'int': 140} |
| `hostPssKb` | {'int': 140} |
| `kind` | {'str': 140} |
| `memAvailableKb` | {'int': 140} |
| `memTotalKb` | {'int': 140} |
| `otherPssKb` | {'int': 140} |
| `processes` | {'int': 140} |
| `pssFallbackProcesses` | {'int': 140} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
