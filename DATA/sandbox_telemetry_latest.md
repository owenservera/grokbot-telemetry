# sandbox_telemetry_parse — 2026-11-12 11:00:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2096969 lines=4642
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4633 |
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
| `chromeBrowserPssKb` | {'int': 4633} |
| `chromeGpuPssKb` | {'int': 4633} |
| `chromeOtherPssKb` | {'int': 4633} |
| `chromeProcesses` | {'int': 4633} |
| `chromeProfiles` | {'int': 4633} |
| `chromeRendererMaxPssKb` | {'int': 4633} |
| `chromeRendererPssKb` | {'int': 4633} |
| `chromeRenderers` | {'int': 4633} |
| `chromeTabs` | {'int': 4633} |
| `chromeTabsProbedProfiles` | {'int': 4633} |
| `chromeUtilityPssKb` | {'int': 4633} |
| `desktopPssKb` | {'int': 4633} |
| `hostPssKb` | {'int': 4633} |
| `kind` | {'str': 4633} |
| `memAvailableKb` | {'int': 4633} |
| `memTotalKb` | {'int': 4633} |
| `otherPssKb` | {'int': 4633} |
| `processes` | {'int': 4633} |
| `pssFallbackProcesses` | {'int': 4633} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
