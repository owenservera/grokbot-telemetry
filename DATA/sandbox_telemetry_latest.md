# sandbox_telemetry_parse — 2026-11-07 14:46:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=506395 lines=1127
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1118 |
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
| `chromeBrowserPssKb` | {'int': 1118} |
| `chromeGpuPssKb` | {'int': 1118} |
| `chromeOtherPssKb` | {'int': 1118} |
| `chromeProcesses` | {'int': 1118} |
| `chromeProfiles` | {'int': 1118} |
| `chromeRendererMaxPssKb` | {'int': 1118} |
| `chromeRendererPssKb` | {'int': 1118} |
| `chromeRenderers` | {'int': 1118} |
| `chromeTabs` | {'int': 1118} |
| `chromeTabsProbedProfiles` | {'int': 1118} |
| `chromeUtilityPssKb` | {'int': 1118} |
| `desktopPssKb` | {'int': 1118} |
| `hostPssKb` | {'int': 1118} |
| `kind` | {'str': 1118} |
| `memAvailableKb` | {'int': 1118} |
| `memTotalKb` | {'int': 1118} |
| `otherPssKb` | {'int': 1118} |
| `processes` | {'int': 1118} |
| `pssFallbackProcesses` | {'int': 1118} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
