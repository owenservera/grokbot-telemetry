# sandbox_telemetry_parse — 2026-11-28 17:34:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=987411 lines=2189
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2181 |
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
| `chromeBrowserPssKb` | {'int': 2181} |
| `chromeGpuPssKb` | {'int': 2181} |
| `chromeOtherPssKb` | {'int': 2181} |
| `chromeProcesses` | {'int': 2181} |
| `chromeProfiles` | {'int': 2181} |
| `chromeRendererMaxPssKb` | {'int': 2181} |
| `chromeRendererPssKb` | {'int': 2181} |
| `chromeRenderers` | {'int': 2181} |
| `chromeTabs` | {'int': 2181} |
| `chromeTabsProbedProfiles` | {'int': 2181} |
| `chromeUtilityPssKb` | {'int': 2181} |
| `desktopPssKb` | {'int': 2181} |
| `hostPssKb` | {'int': 2181} |
| `kind` | {'str': 2181} |
| `memAvailableKb` | {'int': 2181} |
| `memTotalKb` | {'int': 2181} |
| `otherPssKb` | {'int': 2181} |
| `processes` | {'int': 2181} |
| `pssFallbackProcesses` | {'int': 2181} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
