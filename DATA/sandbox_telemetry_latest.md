# sandbox_telemetry_parse — 2026-11-26 20:57:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=82487 lines=189
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 181 |
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
| `chromeBrowserPssKb` | {'int': 181} |
| `chromeGpuPssKb` | {'int': 181} |
| `chromeOtherPssKb` | {'int': 181} |
| `chromeProcesses` | {'int': 181} |
| `chromeProfiles` | {'int': 181} |
| `chromeRendererMaxPssKb` | {'int': 181} |
| `chromeRendererPssKb` | {'int': 181} |
| `chromeRenderers` | {'int': 181} |
| `chromeTabs` | {'int': 181} |
| `chromeTabsProbedProfiles` | {'int': 181} |
| `chromeUtilityPssKb` | {'int': 181} |
| `desktopPssKb` | {'int': 181} |
| `hostPssKb` | {'int': 181} |
| `kind` | {'str': 181} |
| `memAvailableKb` | {'int': 181} |
| `memTotalKb` | {'int': 181} |
| `otherPssKb` | {'int': 181} |
| `processes` | {'int': 181} |
| `pssFallbackProcesses` | {'int': 181} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
