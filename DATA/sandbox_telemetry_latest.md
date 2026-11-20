# sandbox_telemetry_parse — 2026-11-20 12:08:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1705784 lines=3781
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3770 |
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
| `chromeBrowserPssKb` | {'int': 3770} |
| `chromeGpuPssKb` | {'int': 3770} |
| `chromeOtherPssKb` | {'int': 3770} |
| `chromeProcesses` | {'int': 3770} |
| `chromeProfiles` | {'int': 3770} |
| `chromeRendererMaxPssKb` | {'int': 3770} |
| `chromeRendererPssKb` | {'int': 3770} |
| `chromeRenderers` | {'int': 3770} |
| `chromeTabs` | {'int': 3770} |
| `chromeTabsProbedProfiles` | {'int': 3770} |
| `chromeUtilityPssKb` | {'int': 3770} |
| `desktopPssKb` | {'int': 3770} |
| `hostPssKb` | {'int': 3770} |
| `kind` | {'str': 3770} |
| `memAvailableKb` | {'int': 3770} |
| `memTotalKb` | {'int': 3770} |
| `otherPssKb` | {'int': 3770} |
| `processes` | {'int': 3770} |
| `pssFallbackProcesses` | {'int': 3770} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
