# sandbox_telemetry_parse — 2026-11-12 19:02:26 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2281735 lines=5050
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5041 |
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
| `chromeBrowserPssKb` | {'int': 5041} |
| `chromeGpuPssKb` | {'int': 5041} |
| `chromeOtherPssKb` | {'int': 5041} |
| `chromeProcesses` | {'int': 5041} |
| `chromeProfiles` | {'int': 5041} |
| `chromeRendererMaxPssKb` | {'int': 5041} |
| `chromeRendererPssKb` | {'int': 5041} |
| `chromeRenderers` | {'int': 5041} |
| `chromeTabs` | {'int': 5041} |
| `chromeTabsProbedProfiles` | {'int': 5041} |
| `chromeUtilityPssKb` | {'int': 5041} |
| `desktopPssKb` | {'int': 5041} |
| `hostPssKb` | {'int': 5041} |
| `kind` | {'str': 5041} |
| `memAvailableKb` | {'int': 5041} |
| `memTotalKb` | {'int': 5041} |
| `otherPssKb` | {'int': 5041} |
| `processes` | {'int': 5041} |
| `pssFallbackProcesses` | {'int': 5041} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
