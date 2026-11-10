# sandbox_telemetry_parse — 2026-11-10 21:43:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1336370 lines=2961
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2952 |
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
| `chromeBrowserPssKb` | {'int': 2952} |
| `chromeGpuPssKb` | {'int': 2952} |
| `chromeOtherPssKb` | {'int': 2952} |
| `chromeProcesses` | {'int': 2952} |
| `chromeProfiles` | {'int': 2952} |
| `chromeRendererMaxPssKb` | {'int': 2952} |
| `chromeRendererPssKb` | {'int': 2952} |
| `chromeRenderers` | {'int': 2952} |
| `chromeTabs` | {'int': 2952} |
| `chromeTabsProbedProfiles` | {'int': 2952} |
| `chromeUtilityPssKb` | {'int': 2952} |
| `desktopPssKb` | {'int': 2952} |
| `hostPssKb` | {'int': 2952} |
| `kind` | {'str': 2952} |
| `memAvailableKb` | {'int': 2952} |
| `memTotalKb` | {'int': 2952} |
| `otherPssKb` | {'int': 2952} |
| `processes` | {'int': 2952} |
| `pssFallbackProcesses` | {'int': 2952} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
