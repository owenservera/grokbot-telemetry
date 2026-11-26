# sandbox_telemetry_parse — 2026-11-26 18:08:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=24611 lines=61
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 53 |
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
| `chromeBrowserPssKb` | {'int': 53} |
| `chromeGpuPssKb` | {'int': 53} |
| `chromeOtherPssKb` | {'int': 53} |
| `chromeProcesses` | {'int': 53} |
| `chromeProfiles` | {'int': 53} |
| `chromeRendererMaxPssKb` | {'int': 53} |
| `chromeRendererPssKb` | {'int': 53} |
| `chromeRenderers` | {'int': 53} |
| `chromeTabs` | {'int': 53} |
| `chromeTabsProbedProfiles` | {'int': 53} |
| `chromeUtilityPssKb` | {'int': 53} |
| `desktopPssKb` | {'int': 53} |
| `hostPssKb` | {'int': 53} |
| `kind` | {'str': 53} |
| `memAvailableKb` | {'int': 53} |
| `memTotalKb` | {'int': 53} |
| `otherPssKb` | {'int': 53} |
| `processes` | {'int': 53} |
| `pssFallbackProcesses` | {'int': 53} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
