# sandbox_telemetry_parse — 2026-11-10 02:36:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=954838 lines=2118
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2109 |
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
| `chromeBrowserPssKb` | {'int': 2109} |
| `chromeGpuPssKb` | {'int': 2109} |
| `chromeOtherPssKb` | {'int': 2109} |
| `chromeProcesses` | {'int': 2109} |
| `chromeProfiles` | {'int': 2109} |
| `chromeRendererMaxPssKb` | {'int': 2109} |
| `chromeRendererPssKb` | {'int': 2109} |
| `chromeRenderers` | {'int': 2109} |
| `chromeTabs` | {'int': 2109} |
| `chromeTabsProbedProfiles` | {'int': 2109} |
| `chromeUtilityPssKb` | {'int': 2109} |
| `desktopPssKb` | {'int': 2109} |
| `hostPssKb` | {'int': 2109} |
| `kind` | {'str': 2109} |
| `memAvailableKb` | {'int': 2109} |
| `memTotalKb` | {'int': 2109} |
| `otherPssKb` | {'int': 2109} |
| `processes` | {'int': 2109} |
| `pssFallbackProcesses` | {'int': 2109} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
