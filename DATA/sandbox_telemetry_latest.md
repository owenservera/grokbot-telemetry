# sandbox_telemetry_parse — 2026-11-25 03:53:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2579245 lines=5715
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5700 |
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
| `chromeBrowserPssKb` | {'int': 5700} |
| `chromeGpuPssKb` | {'int': 5700} |
| `chromeOtherPssKb` | {'int': 5700} |
| `chromeProcesses` | {'int': 5700} |
| `chromeProfiles` | {'int': 5700} |
| `chromeRendererMaxPssKb` | {'int': 5700} |
| `chromeRendererPssKb` | {'int': 5700} |
| `chromeRenderers` | {'int': 5700} |
| `chromeTabs` | {'int': 5700} |
| `chromeTabsProbedProfiles` | {'int': 5700} |
| `chromeUtilityPssKb` | {'int': 5700} |
| `desktopPssKb` | {'int': 5700} |
| `hostPssKb` | {'int': 5700} |
| `kind` | {'str': 5700} |
| `memAvailableKb` | {'int': 5700} |
| `memTotalKb` | {'int': 5700} |
| `otherPssKb` | {'int': 5700} |
| `processes` | {'int': 5700} |
| `pssFallbackProcesses` | {'int': 5700} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
