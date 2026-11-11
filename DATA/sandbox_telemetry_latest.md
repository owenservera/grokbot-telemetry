# sandbox_telemetry_parse — 2026-11-11 02:48:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1439960 lines=3190
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3181 |
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
| `chromeBrowserPssKb` | {'int': 3181} |
| `chromeGpuPssKb` | {'int': 3181} |
| `chromeOtherPssKb` | {'int': 3181} |
| `chromeProcesses` | {'int': 3181} |
| `chromeProfiles` | {'int': 3181} |
| `chromeRendererMaxPssKb` | {'int': 3181} |
| `chromeRendererPssKb` | {'int': 3181} |
| `chromeRenderers` | {'int': 3181} |
| `chromeTabs` | {'int': 3181} |
| `chromeTabsProbedProfiles` | {'int': 3181} |
| `chromeUtilityPssKb` | {'int': 3181} |
| `desktopPssKb` | {'int': 3181} |
| `hostPssKb` | {'int': 3181} |
| `kind` | {'str': 3181} |
| `memAvailableKb` | {'int': 3181} |
| `memTotalKb` | {'int': 3181} |
| `otherPssKb` | {'int': 3181} |
| `processes` | {'int': 3181} |
| `pssFallbackProcesses` | {'int': 3181} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
