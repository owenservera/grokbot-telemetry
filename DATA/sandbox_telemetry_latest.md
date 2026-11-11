# sandbox_telemetry_parse — 2026-11-11 23:03:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1859859 lines=4118
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4109 |
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
| `chromeBrowserPssKb` | {'int': 4109} |
| `chromeGpuPssKb` | {'int': 4109} |
| `chromeOtherPssKb` | {'int': 4109} |
| `chromeProcesses` | {'int': 4109} |
| `chromeProfiles` | {'int': 4109} |
| `chromeRendererMaxPssKb` | {'int': 4109} |
| `chromeRendererPssKb` | {'int': 4109} |
| `chromeRenderers` | {'int': 4109} |
| `chromeTabs` | {'int': 4109} |
| `chromeTabsProbedProfiles` | {'int': 4109} |
| `chromeUtilityPssKb` | {'int': 4109} |
| `desktopPssKb` | {'int': 4109} |
| `hostPssKb` | {'int': 4109} |
| `kind` | {'str': 4109} |
| `memAvailableKb` | {'int': 4109} |
| `memTotalKb` | {'int': 4109} |
| `otherPssKb` | {'int': 4109} |
| `processes` | {'int': 4109} |
| `pssFallbackProcesses` | {'int': 4109} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
