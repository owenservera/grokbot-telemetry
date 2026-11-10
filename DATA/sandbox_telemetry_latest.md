# sandbox_telemetry_parse — 2026-11-10 13:44:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1163880 lines=2580
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2571 |
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
| `chromeBrowserPssKb` | {'int': 2571} |
| `chromeGpuPssKb` | {'int': 2571} |
| `chromeOtherPssKb` | {'int': 2571} |
| `chromeProcesses` | {'int': 2571} |
| `chromeProfiles` | {'int': 2571} |
| `chromeRendererMaxPssKb` | {'int': 2571} |
| `chromeRendererPssKb` | {'int': 2571} |
| `chromeRenderers` | {'int': 2571} |
| `chromeTabs` | {'int': 2571} |
| `chromeTabsProbedProfiles` | {'int': 2571} |
| `chromeUtilityPssKb` | {'int': 2571} |
| `desktopPssKb` | {'int': 2571} |
| `hostPssKb` | {'int': 2571} |
| `kind` | {'str': 2571} |
| `memAvailableKb` | {'int': 2571} |
| `memTotalKb` | {'int': 2571} |
| `otherPssKb` | {'int': 2571} |
| `processes` | {'int': 2571} |
| `pssFallbackProcesses` | {'int': 2571} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
