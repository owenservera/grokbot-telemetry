# sandbox_telemetry_parse — 2026-11-10 12:41:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1140329 lines=2528
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2519 |
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
| `chromeBrowserPssKb` | {'int': 2519} |
| `chromeGpuPssKb` | {'int': 2519} |
| `chromeOtherPssKb` | {'int': 2519} |
| `chromeProcesses` | {'int': 2519} |
| `chromeProfiles` | {'int': 2519} |
| `chromeRendererMaxPssKb` | {'int': 2519} |
| `chromeRendererPssKb` | {'int': 2519} |
| `chromeRenderers` | {'int': 2519} |
| `chromeTabs` | {'int': 2519} |
| `chromeTabsProbedProfiles` | {'int': 2519} |
| `chromeUtilityPssKb` | {'int': 2519} |
| `desktopPssKb` | {'int': 2519} |
| `hostPssKb` | {'int': 2519} |
| `kind` | {'str': 2519} |
| `memAvailableKb` | {'int': 2519} |
| `memTotalKb` | {'int': 2519} |
| `otherPssKb` | {'int': 2519} |
| `processes` | {'int': 2519} |
| `pssFallbackProcesses` | {'int': 2519} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
