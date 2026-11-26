# sandbox_telemetry_parse — 2026-11-26 01:17:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3008865 lines=6665
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6650 |
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
| `chromeBrowserPssKb` | {'int': 6650} |
| `chromeGpuPssKb` | {'int': 6650} |
| `chromeOtherPssKb` | {'int': 6650} |
| `chromeProcesses` | {'int': 6650} |
| `chromeProfiles` | {'int': 6650} |
| `chromeRendererMaxPssKb` | {'int': 6650} |
| `chromeRendererPssKb` | {'int': 6650} |
| `chromeRenderers` | {'int': 6650} |
| `chromeTabs` | {'int': 6650} |
| `chromeTabsProbedProfiles` | {'int': 6650} |
| `chromeUtilityPssKb` | {'int': 6650} |
| `desktopPssKb` | {'int': 6650} |
| `hostPssKb` | {'int': 6650} |
| `kind` | {'str': 6650} |
| `memAvailableKb` | {'int': 6650} |
| `memTotalKb` | {'int': 6650} |
| `otherPssKb` | {'int': 6650} |
| `processes` | {'int': 6650} |
| `pssFallbackProcesses` | {'int': 6650} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
