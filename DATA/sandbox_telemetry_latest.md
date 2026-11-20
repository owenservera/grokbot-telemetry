# sandbox_telemetry_parse — 2026-11-20 19:00:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1846653 lines=4094
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4081 |
| `egress_tunnel` | 9 |
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
| `attempt` | {'int': 9} |
| `exitStatus` | {'int': 4} |
| `kind` | {'str': 9} |
| `outcome` | {'str': 9} |
| `runtimeS` | {'int': 4} |

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
| `chromeBrowserPssKb` | {'int': 4081} |
| `chromeGpuPssKb` | {'int': 4081} |
| `chromeOtherPssKb` | {'int': 4081} |
| `chromeProcesses` | {'int': 4081} |
| `chromeProfiles` | {'int': 4081} |
| `chromeRendererMaxPssKb` | {'int': 4081} |
| `chromeRendererPssKb` | {'int': 4081} |
| `chromeRenderers` | {'int': 4081} |
| `chromeTabs` | {'int': 4081} |
| `chromeTabsProbedProfiles` | {'int': 4081} |
| `chromeUtilityPssKb` | {'int': 4081} |
| `desktopPssKb` | {'int': 4081} |
| `hostPssKb` | {'int': 4081} |
| `kind` | {'str': 4081} |
| `memAvailableKb` | {'int': 4081} |
| `memTotalKb` | {'int': 4081} |
| `otherPssKb` | {'int': 4081} |
| `processes` | {'int': 4081} |
| `pssFallbackProcesses` | {'int': 4081} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
