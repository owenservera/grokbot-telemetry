# sandbox_telemetry_parse — 2026-11-11 06:36:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1508232 lines=3341
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3332 |
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
| `chromeBrowserPssKb` | {'int': 3332} |
| `chromeGpuPssKb` | {'int': 3332} |
| `chromeOtherPssKb` | {'int': 3332} |
| `chromeProcesses` | {'int': 3332} |
| `chromeProfiles` | {'int': 3332} |
| `chromeRendererMaxPssKb` | {'int': 3332} |
| `chromeRendererPssKb` | {'int': 3332} |
| `chromeRenderers` | {'int': 3332} |
| `chromeTabs` | {'int': 3332} |
| `chromeTabsProbedProfiles` | {'int': 3332} |
| `chromeUtilityPssKb` | {'int': 3332} |
| `desktopPssKb` | {'int': 3332} |
| `hostPssKb` | {'int': 3332} |
| `kind` | {'str': 3332} |
| `memAvailableKb` | {'int': 3332} |
| `memTotalKb` | {'int': 3332} |
| `otherPssKb` | {'int': 3332} |
| `processes` | {'int': 3332} |
| `pssFallbackProcesses` | {'int': 3332} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
