# sandbox_telemetry_parse — 2026-11-20 19:36:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1855703 lines=4114
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4101 |
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
| `chromeBrowserPssKb` | {'int': 4101} |
| `chromeGpuPssKb` | {'int': 4101} |
| `chromeOtherPssKb` | {'int': 4101} |
| `chromeProcesses` | {'int': 4101} |
| `chromeProfiles` | {'int': 4101} |
| `chromeRendererMaxPssKb` | {'int': 4101} |
| `chromeRendererPssKb` | {'int': 4101} |
| `chromeRenderers` | {'int': 4101} |
| `chromeTabs` | {'int': 4101} |
| `chromeTabsProbedProfiles` | {'int': 4101} |
| `chromeUtilityPssKb` | {'int': 4101} |
| `desktopPssKb` | {'int': 4101} |
| `hostPssKb` | {'int': 4101} |
| `kind` | {'str': 4101} |
| `memAvailableKb` | {'int': 4101} |
| `memTotalKb` | {'int': 4101} |
| `otherPssKb` | {'int': 4101} |
| `processes` | {'int': 4101} |
| `pssFallbackProcesses` | {'int': 4101} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
