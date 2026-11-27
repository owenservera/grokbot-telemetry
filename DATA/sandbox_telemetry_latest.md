# sandbox_telemetry_parse — 2026-11-27 09:09:37 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=339400 lines=757
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 749 |
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
| `chromeBrowserPssKb` | {'int': 749} |
| `chromeGpuPssKb` | {'int': 749} |
| `chromeOtherPssKb` | {'int': 749} |
| `chromeProcesses` | {'int': 749} |
| `chromeProfiles` | {'int': 749} |
| `chromeRendererMaxPssKb` | {'int': 749} |
| `chromeRendererPssKb` | {'int': 749} |
| `chromeRenderers` | {'int': 749} |
| `chromeTabs` | {'int': 749} |
| `chromeTabsProbedProfiles` | {'int': 749} |
| `chromeUtilityPssKb` | {'int': 749} |
| `desktopPssKb` | {'int': 749} |
| `hostPssKb` | {'int': 749} |
| `kind` | {'str': 749} |
| `memAvailableKb` | {'int': 749} |
| `memTotalKb` | {'int': 749} |
| `otherPssKb` | {'int': 749} |
| `processes` | {'int': 749} |
| `pssFallbackProcesses` | {'int': 749} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
