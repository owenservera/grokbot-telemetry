# sandbox_telemetry_parse — 2026-11-19 15:50:26 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1339308 lines=2969
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2960 |
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
| `chromeBrowserPssKb` | {'int': 2960} |
| `chromeGpuPssKb` | {'int': 2960} |
| `chromeOtherPssKb` | {'int': 2960} |
| `chromeProcesses` | {'int': 2960} |
| `chromeProfiles` | {'int': 2960} |
| `chromeRendererMaxPssKb` | {'int': 2960} |
| `chromeRendererPssKb` | {'int': 2960} |
| `chromeRenderers` | {'int': 2960} |
| `chromeTabs` | {'int': 2960} |
| `chromeTabsProbedProfiles` | {'int': 2960} |
| `chromeUtilityPssKb` | {'int': 2960} |
| `desktopPssKb` | {'int': 2960} |
| `hostPssKb` | {'int': 2960} |
| `kind` | {'str': 2960} |
| `memAvailableKb` | {'int': 2960} |
| `memTotalKb` | {'int': 2960} |
| `otherPssKb` | {'int': 2960} |
| `processes` | {'int': 2960} |
| `pssFallbackProcesses` | {'int': 2960} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
