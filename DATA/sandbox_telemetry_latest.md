# sandbox_telemetry_parse — 2026-11-20 08:26:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1638416 lines=3632
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3621 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3621} |
| `chromeGpuPssKb` | {'int': 3621} |
| `chromeOtherPssKb` | {'int': 3621} |
| `chromeProcesses` | {'int': 3621} |
| `chromeProfiles` | {'int': 3621} |
| `chromeRendererMaxPssKb` | {'int': 3621} |
| `chromeRendererPssKb` | {'int': 3621} |
| `chromeRenderers` | {'int': 3621} |
| `chromeTabs` | {'int': 3621} |
| `chromeTabsProbedProfiles` | {'int': 3621} |
| `chromeUtilityPssKb` | {'int': 3621} |
| `desktopPssKb` | {'int': 3621} |
| `hostPssKb` | {'int': 3621} |
| `kind` | {'str': 3621} |
| `memAvailableKb` | {'int': 3621} |
| `memTotalKb` | {'int': 3621} |
| `otherPssKb` | {'int': 3621} |
| `processes` | {'int': 3621} |
| `pssFallbackProcesses` | {'int': 3621} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
