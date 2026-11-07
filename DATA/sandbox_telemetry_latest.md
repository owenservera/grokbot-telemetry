# sandbox_telemetry_parse — 2026-11-07 10:15:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=415930 lines=927
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 918 |
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
| `chromeBrowserPssKb` | {'int': 918} |
| `chromeGpuPssKb` | {'int': 918} |
| `chromeOtherPssKb` | {'int': 918} |
| `chromeProcesses` | {'int': 918} |
| `chromeProfiles` | {'int': 918} |
| `chromeRendererMaxPssKb` | {'int': 918} |
| `chromeRendererPssKb` | {'int': 918} |
| `chromeRenderers` | {'int': 918} |
| `chromeTabs` | {'int': 918} |
| `chromeTabsProbedProfiles` | {'int': 918} |
| `chromeUtilityPssKb` | {'int': 918} |
| `desktopPssKb` | {'int': 918} |
| `hostPssKb` | {'int': 918} |
| `kind` | {'str': 918} |
| `memAvailableKb` | {'int': 918} |
| `memTotalKb` | {'int': 918} |
| `otherPssKb` | {'int': 918} |
| `processes` | {'int': 918} |
| `pssFallbackProcesses` | {'int': 918} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
