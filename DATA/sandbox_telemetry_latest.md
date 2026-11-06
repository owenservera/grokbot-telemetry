# sandbox_telemetry_parse — 2026-11-06 14:08:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=43966 lines=103
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 96 |
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
| `chromeBrowserPssKb` | {'int': 96} |
| `chromeGpuPssKb` | {'int': 96} |
| `chromeOtherPssKb` | {'int': 96} |
| `chromeProcesses` | {'int': 96} |
| `chromeProfiles` | {'int': 96} |
| `chromeRendererMaxPssKb` | {'int': 96} |
| `chromeRendererPssKb` | {'int': 96} |
| `chromeRenderers` | {'int': 96} |
| `chromeTabs` | {'int': 96} |
| `chromeTabsProbedProfiles` | {'int': 96} |
| `chromeUtilityPssKb` | {'int': 96} |
| `desktopPssKb` | {'int': 96} |
| `hostPssKb` | {'int': 96} |
| `kind` | {'str': 96} |
| `memAvailableKb` | {'int': 96} |
| `memTotalKb` | {'int': 96} |
| `otherPssKb` | {'int': 96} |
| `processes` | {'int': 96} |
| `pssFallbackProcesses` | {'int': 96} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
