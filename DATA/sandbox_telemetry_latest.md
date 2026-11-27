# sandbox_telemetry_parse — 2026-11-27 19:53:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=567514 lines=1261
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1253 |
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
| `chromeBrowserPssKb` | {'int': 1253} |
| `chromeGpuPssKb` | {'int': 1253} |
| `chromeOtherPssKb` | {'int': 1253} |
| `chromeProcesses` | {'int': 1253} |
| `chromeProfiles` | {'int': 1253} |
| `chromeRendererMaxPssKb` | {'int': 1253} |
| `chromeRendererPssKb` | {'int': 1253} |
| `chromeRenderers` | {'int': 1253} |
| `chromeTabs` | {'int': 1253} |
| `chromeTabsProbedProfiles` | {'int': 1253} |
| `chromeUtilityPssKb` | {'int': 1253} |
| `desktopPssKb` | {'int': 1253} |
| `hostPssKb` | {'int': 1253} |
| `kind` | {'str': 1253} |
| `memAvailableKb` | {'int': 1253} |
| `memTotalKb` | {'int': 1253} |
| `otherPssKb` | {'int': 1253} |
| `processes` | {'int': 1253} |
| `pssFallbackProcesses` | {'int': 1253} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
