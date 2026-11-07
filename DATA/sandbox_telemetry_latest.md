# sandbox_telemetry_parse — 2026-11-07 03:11:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=286150 lines=640
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 631 |
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
| `chromeBrowserPssKb` | {'int': 631} |
| `chromeGpuPssKb` | {'int': 631} |
| `chromeOtherPssKb` | {'int': 631} |
| `chromeProcesses` | {'int': 631} |
| `chromeProfiles` | {'int': 631} |
| `chromeRendererMaxPssKb` | {'int': 631} |
| `chromeRendererPssKb` | {'int': 631} |
| `chromeRenderers` | {'int': 631} |
| `chromeTabs` | {'int': 631} |
| `chromeTabsProbedProfiles` | {'int': 631} |
| `chromeUtilityPssKb` | {'int': 631} |
| `desktopPssKb` | {'int': 631} |
| `hostPssKb` | {'int': 631} |
| `kind` | {'str': 631} |
| `memAvailableKb` | {'int': 631} |
| `memTotalKb` | {'int': 631} |
| `otherPssKb` | {'int': 631} |
| `processes` | {'int': 631} |
| `pssFallbackProcesses` | {'int': 631} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
