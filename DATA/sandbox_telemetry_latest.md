# sandbox_telemetry_parse — 2026-11-09 11:51:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=643022 lines=1429
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1420 |
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
| `chromeBrowserPssKb` | {'int': 1420} |
| `chromeGpuPssKb` | {'int': 1420} |
| `chromeOtherPssKb` | {'int': 1420} |
| `chromeProcesses` | {'int': 1420} |
| `chromeProfiles` | {'int': 1420} |
| `chromeRendererMaxPssKb` | {'int': 1420} |
| `chromeRendererPssKb` | {'int': 1420} |
| `chromeRenderers` | {'int': 1420} |
| `chromeTabs` | {'int': 1420} |
| `chromeTabsProbedProfiles` | {'int': 1420} |
| `chromeUtilityPssKb` | {'int': 1420} |
| `desktopPssKb` | {'int': 1420} |
| `hostPssKb` | {'int': 1420} |
| `kind` | {'str': 1420} |
| `memAvailableKb` | {'int': 1420} |
| `memTotalKb` | {'int': 1420} |
| `otherPssKb` | {'int': 1420} |
| `processes` | {'int': 1420} |
| `pssFallbackProcesses` | {'int': 1420} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
