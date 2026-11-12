# sandbox_telemetry_parse — 2026-11-12 20:43:26 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2320691 lines=5136
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5127 |
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
| `chromeBrowserPssKb` | {'int': 5127} |
| `chromeGpuPssKb` | {'int': 5127} |
| `chromeOtherPssKb` | {'int': 5127} |
| `chromeProcesses` | {'int': 5127} |
| `chromeProfiles` | {'int': 5127} |
| `chromeRendererMaxPssKb` | {'int': 5127} |
| `chromeRendererPssKb` | {'int': 5127} |
| `chromeRenderers` | {'int': 5127} |
| `chromeTabs` | {'int': 5127} |
| `chromeTabsProbedProfiles` | {'int': 5127} |
| `chromeUtilityPssKb` | {'int': 5127} |
| `desktopPssKb` | {'int': 5127} |
| `hostPssKb` | {'int': 5127} |
| `kind` | {'str': 5127} |
| `memAvailableKb` | {'int': 5127} |
| `memTotalKb` | {'int': 5127} |
| `otherPssKb` | {'int': 5127} |
| `processes` | {'int': 5127} |
| `pssFallbackProcesses` | {'int': 5127} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
