# sandbox_telemetry_parse — 2026-11-13 00:05:51 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2384460 lines=5277
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5268 |
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
| `chromeBrowserPssKb` | {'int': 5268} |
| `chromeGpuPssKb` | {'int': 5268} |
| `chromeOtherPssKb` | {'int': 5268} |
| `chromeProcesses` | {'int': 5268} |
| `chromeProfiles` | {'int': 5268} |
| `chromeRendererMaxPssKb` | {'int': 5268} |
| `chromeRendererPssKb` | {'int': 5268} |
| `chromeRenderers` | {'int': 5268} |
| `chromeTabs` | {'int': 5268} |
| `chromeTabsProbedProfiles` | {'int': 5268} |
| `chromeUtilityPssKb` | {'int': 5268} |
| `desktopPssKb` | {'int': 5268} |
| `hostPssKb` | {'int': 5268} |
| `kind` | {'str': 5268} |
| `memAvailableKb` | {'int': 5268} |
| `memTotalKb` | {'int': 5268} |
| `otherPssKb` | {'int': 5268} |
| `processes` | {'int': 5268} |
| `pssFallbackProcesses` | {'int': 5268} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
