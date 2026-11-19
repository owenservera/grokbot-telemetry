# sandbox_telemetry_parse — 2026-11-19 09:14:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1200860 lines=2663
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2654 |
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
| `chromeBrowserPssKb` | {'int': 2654} |
| `chromeGpuPssKb` | {'int': 2654} |
| `chromeOtherPssKb` | {'int': 2654} |
| `chromeProcesses` | {'int': 2654} |
| `chromeProfiles` | {'int': 2654} |
| `chromeRendererMaxPssKb` | {'int': 2654} |
| `chromeRendererPssKb` | {'int': 2654} |
| `chromeRenderers` | {'int': 2654} |
| `chromeTabs` | {'int': 2654} |
| `chromeTabsProbedProfiles` | {'int': 2654} |
| `chromeUtilityPssKb` | {'int': 2654} |
| `desktopPssKb` | {'int': 2654} |
| `hostPssKb` | {'int': 2654} |
| `kind` | {'str': 2654} |
| `memAvailableKb` | {'int': 2654} |
| `memTotalKb` | {'int': 2654} |
| `otherPssKb` | {'int': 2654} |
| `processes` | {'int': 2654} |
| `pssFallbackProcesses` | {'int': 2654} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
