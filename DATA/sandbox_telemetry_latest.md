# sandbox_telemetry_parse — 2026-11-11 12:29:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1632213 lines=3615
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3606 |
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
| `chromeBrowserPssKb` | {'int': 3606} |
| `chromeGpuPssKb` | {'int': 3606} |
| `chromeOtherPssKb` | {'int': 3606} |
| `chromeProcesses` | {'int': 3606} |
| `chromeProfiles` | {'int': 3606} |
| `chromeRendererMaxPssKb` | {'int': 3606} |
| `chromeRendererPssKb` | {'int': 3606} |
| `chromeRenderers` | {'int': 3606} |
| `chromeTabs` | {'int': 3606} |
| `chromeTabsProbedProfiles` | {'int': 3606} |
| `chromeUtilityPssKb` | {'int': 3606} |
| `desktopPssKb` | {'int': 3606} |
| `hostPssKb` | {'int': 3606} |
| `kind` | {'str': 3606} |
| `memAvailableKb` | {'int': 3606} |
| `memTotalKb` | {'int': 3606} |
| `otherPssKb` | {'int': 3606} |
| `processes` | {'int': 3606} |
| `pssFallbackProcesses` | {'int': 3606} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
