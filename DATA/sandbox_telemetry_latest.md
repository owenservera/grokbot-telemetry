# sandbox_telemetry_parse — 2026-11-24 11:14:36 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2259827 lines=5009
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4994 |
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
| `chromeBrowserPssKb` | {'int': 4994} |
| `chromeGpuPssKb` | {'int': 4994} |
| `chromeOtherPssKb` | {'int': 4994} |
| `chromeProcesses` | {'int': 4994} |
| `chromeProfiles` | {'int': 4994} |
| `chromeRendererMaxPssKb` | {'int': 4994} |
| `chromeRendererPssKb` | {'int': 4994} |
| `chromeRenderers` | {'int': 4994} |
| `chromeTabs` | {'int': 4994} |
| `chromeTabsProbedProfiles` | {'int': 4994} |
| `chromeUtilityPssKb` | {'int': 4994} |
| `desktopPssKb` | {'int': 4994} |
| `hostPssKb` | {'int': 4994} |
| `kind` | {'str': 4994} |
| `memAvailableKb` | {'int': 4994} |
| `memTotalKb` | {'int': 4994} |
| `otherPssKb` | {'int': 4994} |
| `processes` | {'int': 4994} |
| `pssFallbackProcesses` | {'int': 4994} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
