# sandbox_telemetry_parse — 2026-11-19 00:17:21 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1040785 lines=2309
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2300 |
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
| `chromeBrowserPssKb` | {'int': 2300} |
| `chromeGpuPssKb` | {'int': 2300} |
| `chromeOtherPssKb` | {'int': 2300} |
| `chromeProcesses` | {'int': 2300} |
| `chromeProfiles` | {'int': 2300} |
| `chromeRendererMaxPssKb` | {'int': 2300} |
| `chromeRendererPssKb` | {'int': 2300} |
| `chromeRenderers` | {'int': 2300} |
| `chromeTabs` | {'int': 2300} |
| `chromeTabsProbedProfiles` | {'int': 2300} |
| `chromeUtilityPssKb` | {'int': 2300} |
| `desktopPssKb` | {'int': 2300} |
| `hostPssKb` | {'int': 2300} |
| `kind` | {'str': 2300} |
| `memAvailableKb` | {'int': 2300} |
| `memTotalKb` | {'int': 2300} |
| `otherPssKb` | {'int': 2300} |
| `processes` | {'int': 2300} |
| `pssFallbackProcesses` | {'int': 2300} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
