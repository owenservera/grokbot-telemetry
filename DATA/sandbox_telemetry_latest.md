# sandbox_telemetry_parse — 2026-11-26 14:59:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3301576 lines=7312
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7297 |
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
| `chromeBrowserPssKb` | {'int': 7297} |
| `chromeGpuPssKb` | {'int': 7297} |
| `chromeOtherPssKb` | {'int': 7297} |
| `chromeProcesses` | {'int': 7297} |
| `chromeProfiles` | {'int': 7297} |
| `chromeRendererMaxPssKb` | {'int': 7297} |
| `chromeRendererPssKb` | {'int': 7297} |
| `chromeRenderers` | {'int': 7297} |
| `chromeTabs` | {'int': 7297} |
| `chromeTabsProbedProfiles` | {'int': 7297} |
| `chromeUtilityPssKb` | {'int': 7297} |
| `desktopPssKb` | {'int': 7297} |
| `hostPssKb` | {'int': 7297} |
| `kind` | {'str': 7297} |
| `memAvailableKb` | {'int': 7297} |
| `memTotalKb` | {'int': 7297} |
| `otherPssKb` | {'int': 7297} |
| `processes` | {'int': 7297} |
| `pssFallbackProcesses` | {'int': 7297} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
