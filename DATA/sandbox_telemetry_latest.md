# sandbox_telemetry_parse — 2026-11-20 00:14:38 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1504614 lines=3336
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3325 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3325} |
| `chromeGpuPssKb` | {'int': 3325} |
| `chromeOtherPssKb` | {'int': 3325} |
| `chromeProcesses` | {'int': 3325} |
| `chromeProfiles` | {'int': 3325} |
| `chromeRendererMaxPssKb` | {'int': 3325} |
| `chromeRendererPssKb` | {'int': 3325} |
| `chromeRenderers` | {'int': 3325} |
| `chromeTabs` | {'int': 3325} |
| `chromeTabsProbedProfiles` | {'int': 3325} |
| `chromeUtilityPssKb` | {'int': 3325} |
| `desktopPssKb` | {'int': 3325} |
| `hostPssKb` | {'int': 3325} |
| `kind` | {'str': 3325} |
| `memAvailableKb` | {'int': 3325} |
| `memTotalKb` | {'int': 3325} |
| `otherPssKb` | {'int': 3325} |
| `processes` | {'int': 3325} |
| `pssFallbackProcesses` | {'int': 3325} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
