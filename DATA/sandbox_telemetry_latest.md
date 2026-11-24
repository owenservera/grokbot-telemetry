# sandbox_telemetry_parse — 2026-11-24 03:58:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2119649 lines=4699
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4684 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 4684} |
| `chromeGpuPssKb` | {'int': 4684} |
| `chromeOtherPssKb` | {'int': 4684} |
| `chromeProcesses` | {'int': 4684} |
| `chromeProfiles` | {'int': 4684} |
| `chromeRendererMaxPssKb` | {'int': 4684} |
| `chromeRendererPssKb` | {'int': 4684} |
| `chromeRenderers` | {'int': 4684} |
| `chromeTabs` | {'int': 4684} |
| `chromeTabsProbedProfiles` | {'int': 4684} |
| `chromeUtilityPssKb` | {'int': 4684} |
| `desktopPssKb` | {'int': 4684} |
| `hostPssKb` | {'int': 4684} |
| `kind` | {'str': 4684} |
| `memAvailableKb` | {'int': 4684} |
| `memTotalKb` | {'int': 4684} |
| `otherPssKb` | {'int': 4684} |
| `processes` | {'int': 4684} |
| `pssFallbackProcesses` | {'int': 4684} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
