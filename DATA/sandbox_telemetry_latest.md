# sandbox_telemetry_parse — 2026-11-24 19:35:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2420961 lines=5365
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5350 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 5350} |
| `chromeGpuPssKb` | {'int': 5350} |
| `chromeOtherPssKb` | {'int': 5350} |
| `chromeProcesses` | {'int': 5350} |
| `chromeProfiles` | {'int': 5350} |
| `chromeRendererMaxPssKb` | {'int': 5350} |
| `chromeRendererPssKb` | {'int': 5350} |
| `chromeRenderers` | {'int': 5350} |
| `chromeTabs` | {'int': 5350} |
| `chromeTabsProbedProfiles` | {'int': 5350} |
| `chromeUtilityPssKb` | {'int': 5350} |
| `desktopPssKb` | {'int': 5350} |
| `hostPssKb` | {'int': 5350} |
| `kind` | {'str': 5350} |
| `memAvailableKb` | {'int': 5350} |
| `memTotalKb` | {'int': 5350} |
| `otherPssKb` | {'int': 5350} |
| `processes` | {'int': 5350} |
| `pssFallbackProcesses` | {'int': 5350} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
