# sandbox_telemetry_parse — 2026-11-17 13:21:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=402536 lines=896
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 889 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `chromeBrowserPssKb` | {'int': 889} |
| `chromeGpuPssKb` | {'int': 889} |
| `chromeOtherPssKb` | {'int': 889} |
| `chromeProcesses` | {'int': 889} |
| `chromeProfiles` | {'int': 889} |
| `chromeRendererMaxPssKb` | {'int': 889} |
| `chromeRendererPssKb` | {'int': 889} |
| `chromeRenderers` | {'int': 889} |
| `chromeTabs` | {'int': 889} |
| `chromeTabsProbedProfiles` | {'int': 889} |
| `chromeUtilityPssKb` | {'int': 889} |
| `desktopPssKb` | {'int': 889} |
| `hostPssKb` | {'int': 889} |
| `kind` | {'str': 889} |
| `memAvailableKb` | {'int': 889} |
| `memTotalKb` | {'int': 889} |
| `otherPssKb` | {'int': 889} |
| `processes` | {'int': 889} |
| `pssFallbackProcesses` | {'int': 889} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
