# sandbox_telemetry_parse — 2026-11-11 09:34:09 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1564758 lines=3466
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3457 |
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
| `chromeBrowserPssKb` | {'int': 3457} |
| `chromeGpuPssKb` | {'int': 3457} |
| `chromeOtherPssKb` | {'int': 3457} |
| `chromeProcesses` | {'int': 3457} |
| `chromeProfiles` | {'int': 3457} |
| `chromeRendererMaxPssKb` | {'int': 3457} |
| `chromeRendererPssKb` | {'int': 3457} |
| `chromeRenderers` | {'int': 3457} |
| `chromeTabs` | {'int': 3457} |
| `chromeTabsProbedProfiles` | {'int': 3457} |
| `chromeUtilityPssKb` | {'int': 3457} |
| `desktopPssKb` | {'int': 3457} |
| `hostPssKb` | {'int': 3457} |
| `kind` | {'str': 3457} |
| `memAvailableKb` | {'int': 3457} |
| `memTotalKb` | {'int': 3457} |
| `otherPssKb` | {'int': 3457} |
| `processes` | {'int': 3457} |
| `pssFallbackProcesses` | {'int': 3457} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
