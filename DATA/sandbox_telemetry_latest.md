# sandbox_telemetry_parse — 2026-11-06 22:15:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=189813 lines=427
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 418 |
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
| `chromeBrowserPssKb` | {'int': 418} |
| `chromeGpuPssKb` | {'int': 418} |
| `chromeOtherPssKb` | {'int': 418} |
| `chromeProcesses` | {'int': 418} |
| `chromeProfiles` | {'int': 418} |
| `chromeRendererMaxPssKb` | {'int': 418} |
| `chromeRendererPssKb` | {'int': 418} |
| `chromeRenderers` | {'int': 418} |
| `chromeTabs` | {'int': 418} |
| `chromeTabsProbedProfiles` | {'int': 418} |
| `chromeUtilityPssKb` | {'int': 418} |
| `desktopPssKb` | {'int': 418} |
| `hostPssKb` | {'int': 418} |
| `kind` | {'str': 418} |
| `memAvailableKb` | {'int': 418} |
| `memTotalKb` | {'int': 418} |
| `otherPssKb` | {'int': 418} |
| `processes` | {'int': 418} |
| `pssFallbackProcesses` | {'int': 418} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
