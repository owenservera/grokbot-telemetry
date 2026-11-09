# sandbox_telemetry_parse — 2026-11-09 13:53:04 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=686002 lines=1524
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1515 |
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
| `chromeBrowserPssKb` | {'int': 1515} |
| `chromeGpuPssKb` | {'int': 1515} |
| `chromeOtherPssKb` | {'int': 1515} |
| `chromeProcesses` | {'int': 1515} |
| `chromeProfiles` | {'int': 1515} |
| `chromeRendererMaxPssKb` | {'int': 1515} |
| `chromeRendererPssKb` | {'int': 1515} |
| `chromeRenderers` | {'int': 1515} |
| `chromeTabs` | {'int': 1515} |
| `chromeTabsProbedProfiles` | {'int': 1515} |
| `chromeUtilityPssKb` | {'int': 1515} |
| `desktopPssKb` | {'int': 1515} |
| `hostPssKb` | {'int': 1515} |
| `kind` | {'str': 1515} |
| `memAvailableKb` | {'int': 1515} |
| `memTotalKb` | {'int': 1515} |
| `otherPssKb` | {'int': 1515} |
| `processes` | {'int': 1515} |
| `pssFallbackProcesses` | {'int': 1515} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
