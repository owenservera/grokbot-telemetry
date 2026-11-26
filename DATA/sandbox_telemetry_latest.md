# sandbox_telemetry_parse — 2026-11-26 21:41:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=96952 lines=221
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 213 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

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
| `chromeBrowserPssKb` | {'int': 213} |
| `chromeGpuPssKb` | {'int': 213} |
| `chromeOtherPssKb` | {'int': 213} |
| `chromeProcesses` | {'int': 213} |
| `chromeProfiles` | {'int': 213} |
| `chromeRendererMaxPssKb` | {'int': 213} |
| `chromeRendererPssKb` | {'int': 213} |
| `chromeRenderers` | {'int': 213} |
| `chromeTabs` | {'int': 213} |
| `chromeTabsProbedProfiles` | {'int': 213} |
| `chromeUtilityPssKb` | {'int': 213} |
| `desktopPssKb` | {'int': 213} |
| `hostPssKb` | {'int': 213} |
| `kind` | {'str': 213} |
| `memAvailableKb` | {'int': 213} |
| `memTotalKb` | {'int': 213} |
| `otherPssKb` | {'int': 213} |
| `processes` | {'int': 213} |
| `pssFallbackProcesses` | {'int': 213} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
