# sandbox_telemetry_parse — 2026-11-20 18:08:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1829465 lines=4056
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4043 |
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
| `chromeBrowserPssKb` | {'int': 4043} |
| `chromeGpuPssKb` | {'int': 4043} |
| `chromeOtherPssKb` | {'int': 4043} |
| `chromeProcesses` | {'int': 4043} |
| `chromeProfiles` | {'int': 4043} |
| `chromeRendererMaxPssKb` | {'int': 4043} |
| `chromeRendererPssKb` | {'int': 4043} |
| `chromeRenderers` | {'int': 4043} |
| `chromeTabs` | {'int': 4043} |
| `chromeTabsProbedProfiles` | {'int': 4043} |
| `chromeUtilityPssKb` | {'int': 4043} |
| `desktopPssKb` | {'int': 4043} |
| `hostPssKb` | {'int': 4043} |
| `kind` | {'str': 4043} |
| `memAvailableKb` | {'int': 4043} |
| `memTotalKb` | {'int': 4043} |
| `otherPssKb` | {'int': 4043} |
| `processes` | {'int': 4043} |
| `pssFallbackProcesses` | {'int': 4043} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
