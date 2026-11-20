# sandbox_telemetry_parse — 2026-11-20 03:26:37 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1556142 lines=3450
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3439 |
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
| `chromeBrowserPssKb` | {'int': 3439} |
| `chromeGpuPssKb` | {'int': 3439} |
| `chromeOtherPssKb` | {'int': 3439} |
| `chromeProcesses` | {'int': 3439} |
| `chromeProfiles` | {'int': 3439} |
| `chromeRendererMaxPssKb` | {'int': 3439} |
| `chromeRendererPssKb` | {'int': 3439} |
| `chromeRenderers` | {'int': 3439} |
| `chromeTabs` | {'int': 3439} |
| `chromeTabsProbedProfiles` | {'int': 3439} |
| `chromeUtilityPssKb` | {'int': 3439} |
| `desktopPssKb` | {'int': 3439} |
| `hostPssKb` | {'int': 3439} |
| `kind` | {'str': 3439} |
| `memAvailableKb` | {'int': 3439} |
| `memTotalKb` | {'int': 3439} |
| `otherPssKb` | {'int': 3439} |
| `processes` | {'int': 3439} |
| `pssFallbackProcesses` | {'int': 3439} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
