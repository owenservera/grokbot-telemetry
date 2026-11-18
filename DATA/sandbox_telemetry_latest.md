# sandbox_telemetry_parse — 2026-11-18 16:17:18 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=886819 lines=1967
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1960 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `chromeBrowserPssKb` | {'int': 1960} |
| `chromeGpuPssKb` | {'int': 1960} |
| `chromeOtherPssKb` | {'int': 1960} |
| `chromeProcesses` | {'int': 1960} |
| `chromeProfiles` | {'int': 1960} |
| `chromeRendererMaxPssKb` | {'int': 1960} |
| `chromeRendererPssKb` | {'int': 1960} |
| `chromeRenderers` | {'int': 1960} |
| `chromeTabs` | {'int': 1960} |
| `chromeTabsProbedProfiles` | {'int': 1960} |
| `chromeUtilityPssKb` | {'int': 1960} |
| `desktopPssKb` | {'int': 1960} |
| `hostPssKb` | {'int': 1960} |
| `kind` | {'str': 1960} |
| `memAvailableKb` | {'int': 1960} |
| `memTotalKb` | {'int': 1960} |
| `otherPssKb` | {'int': 1960} |
| `processes` | {'int': 1960} |
| `pssFallbackProcesses` | {'int': 1960} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
