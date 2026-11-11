# sandbox_telemetry_parse — 2026-11-11 09:05:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1555264 lines=3445
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3436 |
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
| `chromeBrowserPssKb` | {'int': 3436} |
| `chromeGpuPssKb` | {'int': 3436} |
| `chromeOtherPssKb` | {'int': 3436} |
| `chromeProcesses` | {'int': 3436} |
| `chromeProfiles` | {'int': 3436} |
| `chromeRendererMaxPssKb` | {'int': 3436} |
| `chromeRendererPssKb` | {'int': 3436} |
| `chromeRenderers` | {'int': 3436} |
| `chromeTabs` | {'int': 3436} |
| `chromeTabsProbedProfiles` | {'int': 3436} |
| `chromeUtilityPssKb` | {'int': 3436} |
| `desktopPssKb` | {'int': 3436} |
| `hostPssKb` | {'int': 3436} |
| `kind` | {'str': 3436} |
| `memAvailableKb` | {'int': 3436} |
| `memTotalKb` | {'int': 3436} |
| `otherPssKb` | {'int': 3436} |
| `processes` | {'int': 3436} |
| `pssFallbackProcesses` | {'int': 3436} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
