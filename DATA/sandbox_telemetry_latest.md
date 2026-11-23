# sandbox_telemetry_parse — 2026-11-23 17:00:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1916958 lines=4251
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4236 |
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
| `chromeBrowserPssKb` | {'int': 4236} |
| `chromeGpuPssKb` | {'int': 4236} |
| `chromeOtherPssKb` | {'int': 4236} |
| `chromeProcesses` | {'int': 4236} |
| `chromeProfiles` | {'int': 4236} |
| `chromeRendererMaxPssKb` | {'int': 4236} |
| `chromeRendererPssKb` | {'int': 4236} |
| `chromeRenderers` | {'int': 4236} |
| `chromeTabs` | {'int': 4236} |
| `chromeTabsProbedProfiles` | {'int': 4236} |
| `chromeUtilityPssKb` | {'int': 4236} |
| `desktopPssKb` | {'int': 4236} |
| `hostPssKb` | {'int': 4236} |
| `kind` | {'str': 4236} |
| `memAvailableKb` | {'int': 4236} |
| `memTotalKb` | {'int': 4236} |
| `otherPssKb` | {'int': 4236} |
| `processes` | {'int': 4236} |
| `pssFallbackProcesses` | {'int': 4236} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
