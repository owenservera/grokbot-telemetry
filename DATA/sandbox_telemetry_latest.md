# sandbox_telemetry_parse — 2026-11-10 02:12:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=945329 lines=2097
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2088 |
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
| `chromeBrowserPssKb` | {'int': 2088} |
| `chromeGpuPssKb` | {'int': 2088} |
| `chromeOtherPssKb` | {'int': 2088} |
| `chromeProcesses` | {'int': 2088} |
| `chromeProfiles` | {'int': 2088} |
| `chromeRendererMaxPssKb` | {'int': 2088} |
| `chromeRendererPssKb` | {'int': 2088} |
| `chromeRenderers` | {'int': 2088} |
| `chromeTabs` | {'int': 2088} |
| `chromeTabsProbedProfiles` | {'int': 2088} |
| `chromeUtilityPssKb` | {'int': 2088} |
| `desktopPssKb` | {'int': 2088} |
| `hostPssKb` | {'int': 2088} |
| `kind` | {'str': 2088} |
| `memAvailableKb` | {'int': 2088} |
| `memTotalKb` | {'int': 2088} |
| `otherPssKb` | {'int': 2088} |
| `processes` | {'int': 2088} |
| `pssFallbackProcesses` | {'int': 2088} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
