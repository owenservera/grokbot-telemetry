# sandbox_telemetry_parse — 2026-11-07 04:24:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=311922 lines=697
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 688 |
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
| `chromeBrowserPssKb` | {'int': 688} |
| `chromeGpuPssKb` | {'int': 688} |
| `chromeOtherPssKb` | {'int': 688} |
| `chromeProcesses` | {'int': 688} |
| `chromeProfiles` | {'int': 688} |
| `chromeRendererMaxPssKb` | {'int': 688} |
| `chromeRendererPssKb` | {'int': 688} |
| `chromeRenderers` | {'int': 688} |
| `chromeTabs` | {'int': 688} |
| `chromeTabsProbedProfiles` | {'int': 688} |
| `chromeUtilityPssKb` | {'int': 688} |
| `desktopPssKb` | {'int': 688} |
| `hostPssKb` | {'int': 688} |
| `kind` | {'str': 688} |
| `memAvailableKb` | {'int': 688} |
| `memTotalKb` | {'int': 688} |
| `otherPssKb` | {'int': 688} |
| `processes` | {'int': 688} |
| `pssFallbackProcesses` | {'int': 688} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
