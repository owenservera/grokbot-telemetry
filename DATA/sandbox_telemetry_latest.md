# sandbox_telemetry_parse — 2026-11-10 18:53:54 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1273914 lines=2823
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2814 |
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
| `chromeBrowserPssKb` | {'int': 2814} |
| `chromeGpuPssKb` | {'int': 2814} |
| `chromeOtherPssKb` | {'int': 2814} |
| `chromeProcesses` | {'int': 2814} |
| `chromeProfiles` | {'int': 2814} |
| `chromeRendererMaxPssKb` | {'int': 2814} |
| `chromeRendererPssKb` | {'int': 2814} |
| `chromeRenderers` | {'int': 2814} |
| `chromeTabs` | {'int': 2814} |
| `chromeTabsProbedProfiles` | {'int': 2814} |
| `chromeUtilityPssKb` | {'int': 2814} |
| `desktopPssKb` | {'int': 2814} |
| `hostPssKb` | {'int': 2814} |
| `kind` | {'str': 2814} |
| `memAvailableKb` | {'int': 2814} |
| `memTotalKb` | {'int': 2814} |
| `otherPssKb` | {'int': 2814} |
| `processes` | {'int': 2814} |
| `pssFallbackProcesses` | {'int': 2814} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
