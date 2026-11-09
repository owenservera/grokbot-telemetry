# sandbox_telemetry_parse — 2026-11-09 15:50:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=727194 lines=1615
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1606 |
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
| `chromeBrowserPssKb` | {'int': 1606} |
| `chromeGpuPssKb` | {'int': 1606} |
| `chromeOtherPssKb` | {'int': 1606} |
| `chromeProcesses` | {'int': 1606} |
| `chromeProfiles` | {'int': 1606} |
| `chromeRendererMaxPssKb` | {'int': 1606} |
| `chromeRendererPssKb` | {'int': 1606} |
| `chromeRenderers` | {'int': 1606} |
| `chromeTabs` | {'int': 1606} |
| `chromeTabsProbedProfiles` | {'int': 1606} |
| `chromeUtilityPssKb` | {'int': 1606} |
| `desktopPssKb` | {'int': 1606} |
| `hostPssKb` | {'int': 1606} |
| `kind` | {'str': 1606} |
| `memAvailableKb` | {'int': 1606} |
| `memTotalKb` | {'int': 1606} |
| `otherPssKb` | {'int': 1606} |
| `processes` | {'int': 1606} |
| `pssFallbackProcesses` | {'int': 1606} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
