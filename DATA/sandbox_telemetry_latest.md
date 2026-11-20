# sandbox_telemetry_parse — 2026-11-20 13:04:54 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1725687 lines=3825
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3814 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3814} |
| `chromeGpuPssKb` | {'int': 3814} |
| `chromeOtherPssKb` | {'int': 3814} |
| `chromeProcesses` | {'int': 3814} |
| `chromeProfiles` | {'int': 3814} |
| `chromeRendererMaxPssKb` | {'int': 3814} |
| `chromeRendererPssKb` | {'int': 3814} |
| `chromeRenderers` | {'int': 3814} |
| `chromeTabs` | {'int': 3814} |
| `chromeTabsProbedProfiles` | {'int': 3814} |
| `chromeUtilityPssKb` | {'int': 3814} |
| `desktopPssKb` | {'int': 3814} |
| `hostPssKb` | {'int': 3814} |
| `kind` | {'str': 3814} |
| `memAvailableKb` | {'int': 3814} |
| `memTotalKb` | {'int': 3814} |
| `otherPssKb` | {'int': 3814} |
| `processes` | {'int': 3814} |
| `pssFallbackProcesses` | {'int': 3814} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
