# sandbox_telemetry_parse — 2026-11-27 03:03:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=205991 lines=462
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 454 |
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
| `chromeBrowserPssKb` | {'int': 454} |
| `chromeGpuPssKb` | {'int': 454} |
| `chromeOtherPssKb` | {'int': 454} |
| `chromeProcesses` | {'int': 454} |
| `chromeProfiles` | {'int': 454} |
| `chromeRendererMaxPssKb` | {'int': 454} |
| `chromeRendererPssKb` | {'int': 454} |
| `chromeRenderers` | {'int': 454} |
| `chromeTabs` | {'int': 454} |
| `chromeTabsProbedProfiles` | {'int': 454} |
| `chromeUtilityPssKb` | {'int': 454} |
| `desktopPssKb` | {'int': 454} |
| `hostPssKb` | {'int': 454} |
| `kind` | {'str': 454} |
| `memAvailableKb` | {'int': 454} |
| `memTotalKb` | {'int': 454} |
| `otherPssKb` | {'int': 454} |
| `processes` | {'int': 454} |
| `pssFallbackProcesses` | {'int': 454} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
