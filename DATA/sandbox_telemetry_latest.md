# sandbox_telemetry_parse — 2026-11-20 18:49:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1843035 lines=4086
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4073 |
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
| `chromeBrowserPssKb` | {'int': 4073} |
| `chromeGpuPssKb` | {'int': 4073} |
| `chromeOtherPssKb` | {'int': 4073} |
| `chromeProcesses` | {'int': 4073} |
| `chromeProfiles` | {'int': 4073} |
| `chromeRendererMaxPssKb` | {'int': 4073} |
| `chromeRendererPssKb` | {'int': 4073} |
| `chromeRenderers` | {'int': 4073} |
| `chromeTabs` | {'int': 4073} |
| `chromeTabsProbedProfiles` | {'int': 4073} |
| `chromeUtilityPssKb` | {'int': 4073} |
| `desktopPssKb` | {'int': 4073} |
| `hostPssKb` | {'int': 4073} |
| `kind` | {'str': 4073} |
| `memAvailableKb` | {'int': 4073} |
| `memTotalKb` | {'int': 4073} |
| `otherPssKb` | {'int': 4073} |
| `processes` | {'int': 4073} |
| `pssFallbackProcesses` | {'int': 4073} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
