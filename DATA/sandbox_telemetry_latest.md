# sandbox_telemetry_parse — 2026-11-07 14:02:33 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=492818 lines=1097
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1088 |
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
| `chromeBrowserPssKb` | {'int': 1088} |
| `chromeGpuPssKb` | {'int': 1088} |
| `chromeOtherPssKb` | {'int': 1088} |
| `chromeProcesses` | {'int': 1088} |
| `chromeProfiles` | {'int': 1088} |
| `chromeRendererMaxPssKb` | {'int': 1088} |
| `chromeRendererPssKb` | {'int': 1088} |
| `chromeRenderers` | {'int': 1088} |
| `chromeTabs` | {'int': 1088} |
| `chromeTabsProbedProfiles` | {'int': 1088} |
| `chromeUtilityPssKb` | {'int': 1088} |
| `desktopPssKb` | {'int': 1088} |
| `hostPssKb` | {'int': 1088} |
| `kind` | {'str': 1088} |
| `memAvailableKb` | {'int': 1088} |
| `memTotalKb` | {'int': 1088} |
| `otherPssKb` | {'int': 1088} |
| `processes` | {'int': 1088} |
| `pssFallbackProcesses` | {'int': 1088} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
