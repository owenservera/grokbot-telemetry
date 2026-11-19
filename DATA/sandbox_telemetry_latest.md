# sandbox_telemetry_parse — 2026-11-19 10:23:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1227996 lines=2723
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2714 |
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
| `chromeBrowserPssKb` | {'int': 2714} |
| `chromeGpuPssKb` | {'int': 2714} |
| `chromeOtherPssKb` | {'int': 2714} |
| `chromeProcesses` | {'int': 2714} |
| `chromeProfiles` | {'int': 2714} |
| `chromeRendererMaxPssKb` | {'int': 2714} |
| `chromeRendererPssKb` | {'int': 2714} |
| `chromeRenderers` | {'int': 2714} |
| `chromeTabs` | {'int': 2714} |
| `chromeTabsProbedProfiles` | {'int': 2714} |
| `chromeUtilityPssKb` | {'int': 2714} |
| `desktopPssKb` | {'int': 2714} |
| `hostPssKb` | {'int': 2714} |
| `kind` | {'str': 2714} |
| `memAvailableKb` | {'int': 2714} |
| `memTotalKb` | {'int': 2714} |
| `otherPssKb` | {'int': 2714} |
| `processes` | {'int': 2714} |
| `pssFallbackProcesses` | {'int': 2714} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
