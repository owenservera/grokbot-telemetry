# sandbox_telemetry_parse — 2026-11-19 14:31:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1314398 lines=2914
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2905 |
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
| `chromeBrowserPssKb` | {'int': 2905} |
| `chromeGpuPssKb` | {'int': 2905} |
| `chromeOtherPssKb` | {'int': 2905} |
| `chromeProcesses` | {'int': 2905} |
| `chromeProfiles` | {'int': 2905} |
| `chromeRendererMaxPssKb` | {'int': 2905} |
| `chromeRendererPssKb` | {'int': 2905} |
| `chromeRenderers` | {'int': 2905} |
| `chromeTabs` | {'int': 2905} |
| `chromeTabsProbedProfiles` | {'int': 2905} |
| `chromeUtilityPssKb` | {'int': 2905} |
| `desktopPssKb` | {'int': 2905} |
| `hostPssKb` | {'int': 2905} |
| `kind` | {'str': 2905} |
| `memAvailableKb` | {'int': 2905} |
| `memTotalKb` | {'int': 2905} |
| `otherPssKb` | {'int': 2905} |
| `processes` | {'int': 2905} |
| `pssFallbackProcesses` | {'int': 2905} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
