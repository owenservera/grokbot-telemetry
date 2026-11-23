# sandbox_telemetry_parse — 2026-11-23 21:49:33 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2000239 lines=4435
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4420 |
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
| `chromeBrowserPssKb` | {'int': 4420} |
| `chromeGpuPssKb` | {'int': 4420} |
| `chromeOtherPssKb` | {'int': 4420} |
| `chromeProcesses` | {'int': 4420} |
| `chromeProfiles` | {'int': 4420} |
| `chromeRendererMaxPssKb` | {'int': 4420} |
| `chromeRendererPssKb` | {'int': 4420} |
| `chromeRenderers` | {'int': 4420} |
| `chromeTabs` | {'int': 4420} |
| `chromeTabsProbedProfiles` | {'int': 4420} |
| `chromeUtilityPssKb` | {'int': 4420} |
| `desktopPssKb` | {'int': 4420} |
| `hostPssKb` | {'int': 4420} |
| `kind` | {'str': 4420} |
| `memAvailableKb` | {'int': 4420} |
| `memTotalKb` | {'int': 4420} |
| `otherPssKb` | {'int': 4420} |
| `processes` | {'int': 4420} |
| `pssFallbackProcesses` | {'int': 4420} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
