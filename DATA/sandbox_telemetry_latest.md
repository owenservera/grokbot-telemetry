# sandbox_telemetry_parse — 2026-11-07 02:00:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=263989 lines=591
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 582 |
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
| `chromeBrowserPssKb` | {'int': 582} |
| `chromeGpuPssKb` | {'int': 582} |
| `chromeOtherPssKb` | {'int': 582} |
| `chromeProcesses` | {'int': 582} |
| `chromeProfiles` | {'int': 582} |
| `chromeRendererMaxPssKb` | {'int': 582} |
| `chromeRendererPssKb` | {'int': 582} |
| `chromeRenderers` | {'int': 582} |
| `chromeTabs` | {'int': 582} |
| `chromeTabsProbedProfiles` | {'int': 582} |
| `chromeUtilityPssKb` | {'int': 582} |
| `desktopPssKb` | {'int': 582} |
| `hostPssKb` | {'int': 582} |
| `kind` | {'str': 582} |
| `memAvailableKb` | {'int': 582} |
| `memTotalKb` | {'int': 582} |
| `otherPssKb` | {'int': 582} |
| `processes` | {'int': 582} |
| `pssFallbackProcesses` | {'int': 582} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
