# sandbox_telemetry_parse — 2026-11-25 00:23:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2515953 lines=5575
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5560 |
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
| `chromeBrowserPssKb` | {'int': 5560} |
| `chromeGpuPssKb` | {'int': 5560} |
| `chromeOtherPssKb` | {'int': 5560} |
| `chromeProcesses` | {'int': 5560} |
| `chromeProfiles` | {'int': 5560} |
| `chromeRendererMaxPssKb` | {'int': 5560} |
| `chromeRendererPssKb` | {'int': 5560} |
| `chromeRenderers` | {'int': 5560} |
| `chromeTabs` | {'int': 5560} |
| `chromeTabsProbedProfiles` | {'int': 5560} |
| `chromeUtilityPssKb` | {'int': 5560} |
| `desktopPssKb` | {'int': 5560} |
| `hostPssKb` | {'int': 5560} |
| `kind` | {'str': 5560} |
| `memAvailableKb` | {'int': 5560} |
| `memTotalKb` | {'int': 5560} |
| `otherPssKb` | {'int': 5560} |
| `processes` | {'int': 5560} |
| `pssFallbackProcesses` | {'int': 5560} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
