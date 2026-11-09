# sandbox_telemetry_parse — 2026-11-09 12:44:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=661110 lines=1469
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1460 |
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
| `chromeBrowserPssKb` | {'int': 1460} |
| `chromeGpuPssKb` | {'int': 1460} |
| `chromeOtherPssKb` | {'int': 1460} |
| `chromeProcesses` | {'int': 1460} |
| `chromeProfiles` | {'int': 1460} |
| `chromeRendererMaxPssKb` | {'int': 1460} |
| `chromeRendererPssKb` | {'int': 1460} |
| `chromeRenderers` | {'int': 1460} |
| `chromeTabs` | {'int': 1460} |
| `chromeTabsProbedProfiles` | {'int': 1460} |
| `chromeUtilityPssKb` | {'int': 1460} |
| `desktopPssKb` | {'int': 1460} |
| `hostPssKb` | {'int': 1460} |
| `kind` | {'str': 1460} |
| `memAvailableKb` | {'int': 1460} |
| `memTotalKb` | {'int': 1460} |
| `otherPssKb` | {'int': 1460} |
| `processes` | {'int': 1460} |
| `pssFallbackProcesses` | {'int': 1460} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
