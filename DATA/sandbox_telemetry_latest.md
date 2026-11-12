# sandbox_telemetry_parse — 2026-11-12 04:46:21 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1973470 lines=4369
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4360 |
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
| `chromeBrowserPssKb` | {'int': 4360} |
| `chromeGpuPssKb` | {'int': 4360} |
| `chromeOtherPssKb` | {'int': 4360} |
| `chromeProcesses` | {'int': 4360} |
| `chromeProfiles` | {'int': 4360} |
| `chromeRendererMaxPssKb` | {'int': 4360} |
| `chromeRendererPssKb` | {'int': 4360} |
| `chromeRenderers` | {'int': 4360} |
| `chromeTabs` | {'int': 4360} |
| `chromeTabsProbedProfiles` | {'int': 4360} |
| `chromeUtilityPssKb` | {'int': 4360} |
| `desktopPssKb` | {'int': 4360} |
| `hostPssKb` | {'int': 4360} |
| `kind` | {'str': 4360} |
| `memAvailableKb` | {'int': 4360} |
| `memTotalKb` | {'int': 4360} |
| `otherPssKb` | {'int': 4360} |
| `processes` | {'int': 4360} |
| `pssFallbackProcesses` | {'int': 4360} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
