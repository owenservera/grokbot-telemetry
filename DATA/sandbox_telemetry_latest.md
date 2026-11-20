# sandbox_telemetry_parse — 2026-11-20 20:00:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1862031 lines=4128
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4115 |
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
| `chromeBrowserPssKb` | {'int': 4115} |
| `chromeGpuPssKb` | {'int': 4115} |
| `chromeOtherPssKb` | {'int': 4115} |
| `chromeProcesses` | {'int': 4115} |
| `chromeProfiles` | {'int': 4115} |
| `chromeRendererMaxPssKb` | {'int': 4115} |
| `chromeRendererPssKb` | {'int': 4115} |
| `chromeRenderers` | {'int': 4115} |
| `chromeTabs` | {'int': 4115} |
| `chromeTabsProbedProfiles` | {'int': 4115} |
| `chromeUtilityPssKb` | {'int': 4115} |
| `desktopPssKb` | {'int': 4115} |
| `hostPssKb` | {'int': 4115} |
| `kind` | {'str': 4115} |
| `memAvailableKb` | {'int': 4115} |
| `memTotalKb` | {'int': 4115} |
| `otherPssKb` | {'int': 4115} |
| `processes` | {'int': 4115} |
| `pssFallbackProcesses` | {'int': 4115} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
