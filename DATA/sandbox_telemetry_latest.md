# sandbox_telemetry_parse — 2026-11-11 21:26:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1824542 lines=4040
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4031 |
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
| `chromeBrowserPssKb` | {'int': 4031} |
| `chromeGpuPssKb` | {'int': 4031} |
| `chromeOtherPssKb` | {'int': 4031} |
| `chromeProcesses` | {'int': 4031} |
| `chromeProfiles` | {'int': 4031} |
| `chromeRendererMaxPssKb` | {'int': 4031} |
| `chromeRendererPssKb` | {'int': 4031} |
| `chromeRenderers` | {'int': 4031} |
| `chromeTabs` | {'int': 4031} |
| `chromeTabsProbedProfiles` | {'int': 4031} |
| `chromeUtilityPssKb` | {'int': 4031} |
| `desktopPssKb` | {'int': 4031} |
| `hostPssKb` | {'int': 4031} |
| `kind` | {'str': 4031} |
| `memAvailableKb` | {'int': 4031} |
| `memTotalKb` | {'int': 4031} |
| `otherPssKb` | {'int': 4031} |
| `processes` | {'int': 4031} |
| `pssFallbackProcesses` | {'int': 4031} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
