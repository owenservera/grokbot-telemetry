# sandbox_telemetry_parse — 2026-11-20 06:07:54 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1597274 lines=3541
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3530 |
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
| `chromeBrowserPssKb` | {'int': 3530} |
| `chromeGpuPssKb` | {'int': 3530} |
| `chromeOtherPssKb` | {'int': 3530} |
| `chromeProcesses` | {'int': 3530} |
| `chromeProfiles` | {'int': 3530} |
| `chromeRendererMaxPssKb` | {'int': 3530} |
| `chromeRendererPssKb` | {'int': 3530} |
| `chromeRenderers` | {'int': 3530} |
| `chromeTabs` | {'int': 3530} |
| `chromeTabsProbedProfiles` | {'int': 3530} |
| `chromeUtilityPssKb` | {'int': 3530} |
| `desktopPssKb` | {'int': 3530} |
| `hostPssKb` | {'int': 3530} |
| `kind` | {'str': 3530} |
| `memAvailableKb` | {'int': 3530} |
| `memTotalKb` | {'int': 3530} |
| `otherPssKb` | {'int': 3530} |
| `processes` | {'int': 3530} |
| `pssFallbackProcesses` | {'int': 3530} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
