# sandbox_telemetry_parse — 2026-11-27 10:52:54 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=377847 lines=842
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 834 |
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
| `chromeBrowserPssKb` | {'int': 834} |
| `chromeGpuPssKb` | {'int': 834} |
| `chromeOtherPssKb` | {'int': 834} |
| `chromeProcesses` | {'int': 834} |
| `chromeProfiles` | {'int': 834} |
| `chromeRendererMaxPssKb` | {'int': 834} |
| `chromeRendererPssKb` | {'int': 834} |
| `chromeRenderers` | {'int': 834} |
| `chromeTabs` | {'int': 834} |
| `chromeTabsProbedProfiles` | {'int': 834} |
| `chromeUtilityPssKb` | {'int': 834} |
| `desktopPssKb` | {'int': 834} |
| `hostPssKb` | {'int': 834} |
| `kind` | {'str': 834} |
| `memAvailableKb` | {'int': 834} |
| `memTotalKb` | {'int': 834} |
| `otherPssKb` | {'int': 834} |
| `processes` | {'int': 834} |
| `pssFallbackProcesses` | {'int': 834} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
