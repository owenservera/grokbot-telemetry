# sandbox_telemetry_parse — 2026-11-19 21:24:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1447186 lines=3209
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3198 |
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
| `chromeBrowserPssKb` | {'int': 3198} |
| `chromeGpuPssKb` | {'int': 3198} |
| `chromeOtherPssKb` | {'int': 3198} |
| `chromeProcesses` | {'int': 3198} |
| `chromeProfiles` | {'int': 3198} |
| `chromeRendererMaxPssKb` | {'int': 3198} |
| `chromeRendererPssKb` | {'int': 3198} |
| `chromeRenderers` | {'int': 3198} |
| `chromeTabs` | {'int': 3198} |
| `chromeTabsProbedProfiles` | {'int': 3198} |
| `chromeUtilityPssKb` | {'int': 3198} |
| `desktopPssKb` | {'int': 3198} |
| `hostPssKb` | {'int': 3198} |
| `kind` | {'str': 3198} |
| `memAvailableKb` | {'int': 3198} |
| `memTotalKb` | {'int': 3198} |
| `otherPssKb` | {'int': 3198} |
| `processes` | {'int': 3198} |
| `pssFallbackProcesses` | {'int': 3198} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
