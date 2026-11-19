# sandbox_telemetry_parse — 2026-11-19 14:23:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1311227 lines=2907
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2898 |
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
| `chromeBrowserPssKb` | {'int': 2898} |
| `chromeGpuPssKb` | {'int': 2898} |
| `chromeOtherPssKb` | {'int': 2898} |
| `chromeProcesses` | {'int': 2898} |
| `chromeProfiles` | {'int': 2898} |
| `chromeRendererMaxPssKb` | {'int': 2898} |
| `chromeRendererPssKb` | {'int': 2898} |
| `chromeRenderers` | {'int': 2898} |
| `chromeTabs` | {'int': 2898} |
| `chromeTabsProbedProfiles` | {'int': 2898} |
| `chromeUtilityPssKb` | {'int': 2898} |
| `desktopPssKb` | {'int': 2898} |
| `hostPssKb` | {'int': 2898} |
| `kind` | {'str': 2898} |
| `memAvailableKb` | {'int': 2898} |
| `memTotalKb` | {'int': 2898} |
| `otherPssKb` | {'int': 2898} |
| `processes` | {'int': 2898} |
| `pssFallbackProcesses` | {'int': 2898} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
