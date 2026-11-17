# sandbox_telemetry_parse — 2026-11-17 23:48:23 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=588378 lines=1307
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1300 |
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
| `chromeBrowserPssKb` | {'int': 1300} |
| `chromeGpuPssKb` | {'int': 1300} |
| `chromeOtherPssKb` | {'int': 1300} |
| `chromeProcesses` | {'int': 1300} |
| `chromeProfiles` | {'int': 1300} |
| `chromeRendererMaxPssKb` | {'int': 1300} |
| `chromeRendererPssKb` | {'int': 1300} |
| `chromeRenderers` | {'int': 1300} |
| `chromeTabs` | {'int': 1300} |
| `chromeTabsProbedProfiles` | {'int': 1300} |
| `chromeUtilityPssKb` | {'int': 1300} |
| `desktopPssKb` | {'int': 1300} |
| `hostPssKb` | {'int': 1300} |
| `kind` | {'str': 1300} |
| `memAvailableKb` | {'int': 1300} |
| `memTotalKb` | {'int': 1300} |
| `otherPssKb` | {'int': 1300} |
| `processes` | {'int': 1300} |
| `pssFallbackProcesses` | {'int': 1300} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
