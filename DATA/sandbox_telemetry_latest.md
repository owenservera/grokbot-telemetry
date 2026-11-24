# sandbox_telemetry_parse — 2026-11-24 22:52:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2485203 lines=5507
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5492 |
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
| `chromeBrowserPssKb` | {'int': 5492} |
| `chromeGpuPssKb` | {'int': 5492} |
| `chromeOtherPssKb` | {'int': 5492} |
| `chromeProcesses` | {'int': 5492} |
| `chromeProfiles` | {'int': 5492} |
| `chromeRendererMaxPssKb` | {'int': 5492} |
| `chromeRendererPssKb` | {'int': 5492} |
| `chromeRenderers` | {'int': 5492} |
| `chromeTabs` | {'int': 5492} |
| `chromeTabsProbedProfiles` | {'int': 5492} |
| `chromeUtilityPssKb` | {'int': 5492} |
| `desktopPssKb` | {'int': 5492} |
| `hostPssKb` | {'int': 5492} |
| `kind` | {'str': 5492} |
| `memAvailableKb` | {'int': 5492} |
| `memTotalKb` | {'int': 5492} |
| `otherPssKb` | {'int': 5492} |
| `processes` | {'int': 5492} |
| `pssFallbackProcesses` | {'int': 5492} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
