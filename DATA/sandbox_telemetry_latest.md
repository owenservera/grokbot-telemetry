# sandbox_telemetry_parse — 2026-11-27 16:32:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=498672 lines=1109
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1101 |
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
| `chromeBrowserPssKb` | {'int': 1101} |
| `chromeGpuPssKb` | {'int': 1101} |
| `chromeOtherPssKb` | {'int': 1101} |
| `chromeProcesses` | {'int': 1101} |
| `chromeProfiles` | {'int': 1101} |
| `chromeRendererMaxPssKb` | {'int': 1101} |
| `chromeRendererPssKb` | {'int': 1101} |
| `chromeRenderers` | {'int': 1101} |
| `chromeTabs` | {'int': 1101} |
| `chromeTabsProbedProfiles` | {'int': 1101} |
| `chromeUtilityPssKb` | {'int': 1101} |
| `desktopPssKb` | {'int': 1101} |
| `hostPssKb` | {'int': 1101} |
| `kind` | {'str': 1101} |
| `memAvailableKb` | {'int': 1101} |
| `memTotalKb` | {'int': 1101} |
| `otherPssKb` | {'int': 1101} |
| `processes` | {'int': 1101} |
| `pssFallbackProcesses` | {'int': 1101} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
