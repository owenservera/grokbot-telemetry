# sandbox_telemetry_parse — 2026-11-24 02:09:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2086648 lines=4626
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4611 |
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
| `chromeBrowserPssKb` | {'int': 4611} |
| `chromeGpuPssKb` | {'int': 4611} |
| `chromeOtherPssKb` | {'int': 4611} |
| `chromeProcesses` | {'int': 4611} |
| `chromeProfiles` | {'int': 4611} |
| `chromeRendererMaxPssKb` | {'int': 4611} |
| `chromeRendererPssKb` | {'int': 4611} |
| `chromeRenderers` | {'int': 4611} |
| `chromeTabs` | {'int': 4611} |
| `chromeTabsProbedProfiles` | {'int': 4611} |
| `chromeUtilityPssKb` | {'int': 4611} |
| `desktopPssKb` | {'int': 4611} |
| `hostPssKb` | {'int': 4611} |
| `kind` | {'str': 4611} |
| `memAvailableKb` | {'int': 4611} |
| `memTotalKb` | {'int': 4611} |
| `otherPssKb` | {'int': 4611} |
| `processes` | {'int': 4611} |
| `pssFallbackProcesses` | {'int': 4611} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
