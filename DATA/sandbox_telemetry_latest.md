# sandbox_telemetry_parse — 2026-11-26 09:08:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3177602 lines=7038
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7023 |
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
| `chromeBrowserPssKb` | {'int': 7023} |
| `chromeGpuPssKb` | {'int': 7023} |
| `chromeOtherPssKb` | {'int': 7023} |
| `chromeProcesses` | {'int': 7023} |
| `chromeProfiles` | {'int': 7023} |
| `chromeRendererMaxPssKb` | {'int': 7023} |
| `chromeRendererPssKb` | {'int': 7023} |
| `chromeRenderers` | {'int': 7023} |
| `chromeTabs` | {'int': 7023} |
| `chromeTabsProbedProfiles` | {'int': 7023} |
| `chromeUtilityPssKb` | {'int': 7023} |
| `desktopPssKb` | {'int': 7023} |
| `hostPssKb` | {'int': 7023} |
| `kind` | {'str': 7023} |
| `memAvailableKb` | {'int': 7023} |
| `memTotalKb` | {'int': 7023} |
| `otherPssKb` | {'int': 7023} |
| `processes` | {'int': 7023} |
| `pssFallbackProcesses` | {'int': 7023} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
