# sandbox_telemetry_parse — 2026-11-17 08:03:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=310766 lines=693
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 686 |
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
| `chromeBrowserPssKb` | {'int': 686} |
| `chromeGpuPssKb` | {'int': 686} |
| `chromeOtherPssKb` | {'int': 686} |
| `chromeProcesses` | {'int': 686} |
| `chromeProfiles` | {'int': 686} |
| `chromeRendererMaxPssKb` | {'int': 686} |
| `chromeRendererPssKb` | {'int': 686} |
| `chromeRenderers` | {'int': 686} |
| `chromeTabs` | {'int': 686} |
| `chromeTabsProbedProfiles` | {'int': 686} |
| `chromeUtilityPssKb` | {'int': 686} |
| `desktopPssKb` | {'int': 686} |
| `hostPssKb` | {'int': 686} |
| `kind` | {'str': 686} |
| `memAvailableKb` | {'int': 686} |
| `memTotalKb` | {'int': 686} |
| `otherPssKb` | {'int': 686} |
| `processes` | {'int': 686} |
| `pssFallbackProcesses` | {'int': 686} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
