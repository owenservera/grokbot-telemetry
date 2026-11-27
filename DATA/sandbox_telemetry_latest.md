# sandbox_telemetry_parse — 2026-11-27 11:30:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=391877 lines=873
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 865 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 865} |
| `chromeGpuPssKb` | {'int': 865} |
| `chromeOtherPssKb` | {'int': 865} |
| `chromeProcesses` | {'int': 865} |
| `chromeProfiles` | {'int': 865} |
| `chromeRendererMaxPssKb` | {'int': 865} |
| `chromeRendererPssKb` | {'int': 865} |
| `chromeRenderers` | {'int': 865} |
| `chromeTabs` | {'int': 865} |
| `chromeTabsProbedProfiles` | {'int': 865} |
| `chromeUtilityPssKb` | {'int': 865} |
| `desktopPssKb` | {'int': 865} |
| `hostPssKb` | {'int': 865} |
| `kind` | {'str': 865} |
| `memAvailableKb` | {'int': 865} |
| `memTotalKb` | {'int': 865} |
| `otherPssKb` | {'int': 865} |
| `processes` | {'int': 865} |
| `pssFallbackProcesses` | {'int': 865} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
