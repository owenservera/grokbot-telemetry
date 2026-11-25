# sandbox_telemetry_parse — 2026-11-25 07:41:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2655211 lines=5883
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5868 |
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
| `chromeBrowserPssKb` | {'int': 5868} |
| `chromeGpuPssKb` | {'int': 5868} |
| `chromeOtherPssKb` | {'int': 5868} |
| `chromeProcesses` | {'int': 5868} |
| `chromeProfiles` | {'int': 5868} |
| `chromeRendererMaxPssKb` | {'int': 5868} |
| `chromeRendererPssKb` | {'int': 5868} |
| `chromeRenderers` | {'int': 5868} |
| `chromeTabs` | {'int': 5868} |
| `chromeTabsProbedProfiles` | {'int': 5868} |
| `chromeUtilityPssKb` | {'int': 5868} |
| `desktopPssKb` | {'int': 5868} |
| `hostPssKb` | {'int': 5868} |
| `kind` | {'str': 5868} |
| `memAvailableKb` | {'int': 5868} |
| `memTotalKb` | {'int': 5868} |
| `otherPssKb` | {'int': 5868} |
| `processes` | {'int': 5868} |
| `pssFallbackProcesses` | {'int': 5868} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
