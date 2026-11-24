# sandbox_telemetry_parse — 2026-11-24 23:55:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2505557 lines=5552
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5537 |
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
| `chromeBrowserPssKb` | {'int': 5537} |
| `chromeGpuPssKb` | {'int': 5537} |
| `chromeOtherPssKb` | {'int': 5537} |
| `chromeProcesses` | {'int': 5537} |
| `chromeProfiles` | {'int': 5537} |
| `chromeRendererMaxPssKb` | {'int': 5537} |
| `chromeRendererPssKb` | {'int': 5537} |
| `chromeRenderers` | {'int': 5537} |
| `chromeTabs` | {'int': 5537} |
| `chromeTabsProbedProfiles` | {'int': 5537} |
| `chromeUtilityPssKb` | {'int': 5537} |
| `desktopPssKb` | {'int': 5537} |
| `hostPssKb` | {'int': 5537} |
| `kind` | {'str': 5537} |
| `memAvailableKb` | {'int': 5537} |
| `memTotalKb` | {'int': 5537} |
| `otherPssKb` | {'int': 5537} |
| `processes` | {'int': 5537} |
| `pssFallbackProcesses` | {'int': 5537} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
