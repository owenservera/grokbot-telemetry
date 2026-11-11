# sandbox_telemetry_parse — 2026-11-11 23:13:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1863927 lines=4127
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4118 |
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
| `chromeBrowserPssKb` | {'int': 4118} |
| `chromeGpuPssKb` | {'int': 4118} |
| `chromeOtherPssKb` | {'int': 4118} |
| `chromeProcesses` | {'int': 4118} |
| `chromeProfiles` | {'int': 4118} |
| `chromeRendererMaxPssKb` | {'int': 4118} |
| `chromeRendererPssKb` | {'int': 4118} |
| `chromeRenderers` | {'int': 4118} |
| `chromeTabs` | {'int': 4118} |
| `chromeTabsProbedProfiles` | {'int': 4118} |
| `chromeUtilityPssKb` | {'int': 4118} |
| `desktopPssKb` | {'int': 4118} |
| `hostPssKb` | {'int': 4118} |
| `kind` | {'str': 4118} |
| `memAvailableKb` | {'int': 4118} |
| `memTotalKb` | {'int': 4118} |
| `otherPssKb` | {'int': 4118} |
| `processes` | {'int': 4118} |
| `pssFallbackProcesses` | {'int': 4118} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
