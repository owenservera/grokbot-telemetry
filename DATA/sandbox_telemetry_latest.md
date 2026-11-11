# sandbox_telemetry_parse — 2026-11-11 20:00:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1793314 lines=3971
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3962 |
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
| `chromeBrowserPssKb` | {'int': 3962} |
| `chromeGpuPssKb` | {'int': 3962} |
| `chromeOtherPssKb` | {'int': 3962} |
| `chromeProcesses` | {'int': 3962} |
| `chromeProfiles` | {'int': 3962} |
| `chromeRendererMaxPssKb` | {'int': 3962} |
| `chromeRendererPssKb` | {'int': 3962} |
| `chromeRenderers` | {'int': 3962} |
| `chromeTabs` | {'int': 3962} |
| `chromeTabsProbedProfiles` | {'int': 3962} |
| `chromeUtilityPssKb` | {'int': 3962} |
| `desktopPssKb` | {'int': 3962} |
| `hostPssKb` | {'int': 3962} |
| `kind` | {'str': 3962} |
| `memAvailableKb` | {'int': 3962} |
| `memTotalKb` | {'int': 3962} |
| `otherPssKb` | {'int': 3962} |
| `processes` | {'int': 3962} |
| `pssFallbackProcesses` | {'int': 3962} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
