# sandbox_telemetry_parse — 2026-11-24 21:13:09 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2452638 lines=5435
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5420 |
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
| `chromeBrowserPssKb` | {'int': 5420} |
| `chromeGpuPssKb` | {'int': 5420} |
| `chromeOtherPssKb` | {'int': 5420} |
| `chromeProcesses` | {'int': 5420} |
| `chromeProfiles` | {'int': 5420} |
| `chromeRendererMaxPssKb` | {'int': 5420} |
| `chromeRendererPssKb` | {'int': 5420} |
| `chromeRenderers` | {'int': 5420} |
| `chromeTabs` | {'int': 5420} |
| `chromeTabsProbedProfiles` | {'int': 5420} |
| `chromeUtilityPssKb` | {'int': 5420} |
| `desktopPssKb` | {'int': 5420} |
| `hostPssKb` | {'int': 5420} |
| `kind` | {'str': 5420} |
| `memAvailableKb` | {'int': 5420} |
| `memTotalKb` | {'int': 5420} |
| `otherPssKb` | {'int': 5420} |
| `processes` | {'int': 5420} |
| `pssFallbackProcesses` | {'int': 5420} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
