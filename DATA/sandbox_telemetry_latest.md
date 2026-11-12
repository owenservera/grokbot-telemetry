# sandbox_telemetry_parse — 2026-11-12 12:56:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2136326 lines=4729
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4720 |
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
| `chromeBrowserPssKb` | {'int': 4720} |
| `chromeGpuPssKb` | {'int': 4720} |
| `chromeOtherPssKb` | {'int': 4720} |
| `chromeProcesses` | {'int': 4720} |
| `chromeProfiles` | {'int': 4720} |
| `chromeRendererMaxPssKb` | {'int': 4720} |
| `chromeRendererPssKb` | {'int': 4720} |
| `chromeRenderers` | {'int': 4720} |
| `chromeTabs` | {'int': 4720} |
| `chromeTabsProbedProfiles` | {'int': 4720} |
| `chromeUtilityPssKb` | {'int': 4720} |
| `desktopPssKb` | {'int': 4720} |
| `hostPssKb` | {'int': 4720} |
| `kind` | {'str': 4720} |
| `memAvailableKb` | {'int': 4720} |
| `memTotalKb` | {'int': 4720} |
| `otherPssKb` | {'int': 4720} |
| `processes` | {'int': 4720} |
| `pssFallbackProcesses` | {'int': 4720} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
