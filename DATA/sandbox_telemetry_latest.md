# sandbox_telemetry_parse — 2026-11-28 10:55:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=855257 lines=1897
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1889 |
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
| `chromeBrowserPssKb` | {'int': 1889} |
| `chromeGpuPssKb` | {'int': 1889} |
| `chromeOtherPssKb` | {'int': 1889} |
| `chromeProcesses` | {'int': 1889} |
| `chromeProfiles` | {'int': 1889} |
| `chromeRendererMaxPssKb` | {'int': 1889} |
| `chromeRendererPssKb` | {'int': 1889} |
| `chromeRenderers` | {'int': 1889} |
| `chromeTabs` | {'int': 1889} |
| `chromeTabsProbedProfiles` | {'int': 1889} |
| `chromeUtilityPssKb` | {'int': 1889} |
| `desktopPssKb` | {'int': 1889} |
| `hostPssKb` | {'int': 1889} |
| `kind` | {'str': 1889} |
| `memAvailableKb` | {'int': 1889} |
| `memTotalKb` | {'int': 1889} |
| `otherPssKb` | {'int': 1889} |
| `processes` | {'int': 1889} |
| `pssFallbackProcesses` | {'int': 1889} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
