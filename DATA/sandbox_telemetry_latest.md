# sandbox_telemetry_parse — 2026-11-28 02:30:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=696930 lines=1547
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1539 |
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
| `chromeBrowserPssKb` | {'int': 1539} |
| `chromeGpuPssKb` | {'int': 1539} |
| `chromeOtherPssKb` | {'int': 1539} |
| `chromeProcesses` | {'int': 1539} |
| `chromeProfiles` | {'int': 1539} |
| `chromeRendererMaxPssKb` | {'int': 1539} |
| `chromeRendererPssKb` | {'int': 1539} |
| `chromeRenderers` | {'int': 1539} |
| `chromeTabs` | {'int': 1539} |
| `chromeTabsProbedProfiles` | {'int': 1539} |
| `chromeUtilityPssKb` | {'int': 1539} |
| `desktopPssKb` | {'int': 1539} |
| `hostPssKb` | {'int': 1539} |
| `kind` | {'str': 1539} |
| `memAvailableKb` | {'int': 1539} |
| `memTotalKb` | {'int': 1539} |
| `otherPssKb` | {'int': 1539} |
| `processes` | {'int': 1539} |
| `pssFallbackProcesses` | {'int': 1539} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
