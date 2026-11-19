# sandbox_telemetry_parse — 2026-11-19 21:52:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1455779 lines=3228
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3217 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3217} |
| `chromeGpuPssKb` | {'int': 3217} |
| `chromeOtherPssKb` | {'int': 3217} |
| `chromeProcesses` | {'int': 3217} |
| `chromeProfiles` | {'int': 3217} |
| `chromeRendererMaxPssKb` | {'int': 3217} |
| `chromeRendererPssKb` | {'int': 3217} |
| `chromeRenderers` | {'int': 3217} |
| `chromeTabs` | {'int': 3217} |
| `chromeTabsProbedProfiles` | {'int': 3217} |
| `chromeUtilityPssKb` | {'int': 3217} |
| `desktopPssKb` | {'int': 3217} |
| `hostPssKb` | {'int': 3217} |
| `kind` | {'str': 3217} |
| `memAvailableKb` | {'int': 3217} |
| `memTotalKb` | {'int': 3217} |
| `otherPssKb` | {'int': 3217} |
| `processes` | {'int': 3217} |
| `pssFallbackProcesses` | {'int': 3217} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
