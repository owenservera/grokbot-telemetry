# sandbox_telemetry_parse — 2026-11-12 12:33:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2130449 lines=4716
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4707 |
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
| `chromeBrowserPssKb` | {'int': 4707} |
| `chromeGpuPssKb` | {'int': 4707} |
| `chromeOtherPssKb` | {'int': 4707} |
| `chromeProcesses` | {'int': 4707} |
| `chromeProfiles` | {'int': 4707} |
| `chromeRendererMaxPssKb` | {'int': 4707} |
| `chromeRendererPssKb` | {'int': 4707} |
| `chromeRenderers` | {'int': 4707} |
| `chromeTabs` | {'int': 4707} |
| `chromeTabsProbedProfiles` | {'int': 4707} |
| `chromeUtilityPssKb` | {'int': 4707} |
| `desktopPssKb` | {'int': 4707} |
| `hostPssKb` | {'int': 4707} |
| `kind` | {'str': 4707} |
| `memAvailableKb` | {'int': 4707} |
| `memTotalKb` | {'int': 4707} |
| `otherPssKb` | {'int': 4707} |
| `processes` | {'int': 4707} |
| `pssFallbackProcesses` | {'int': 4707} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
