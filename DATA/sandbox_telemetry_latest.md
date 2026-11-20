# sandbox_telemetry_parse — 2026-11-20 09:28:54 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1658761 lines=3677
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3666 |
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
| `chromeBrowserPssKb` | {'int': 3666} |
| `chromeGpuPssKb` | {'int': 3666} |
| `chromeOtherPssKb` | {'int': 3666} |
| `chromeProcesses` | {'int': 3666} |
| `chromeProfiles` | {'int': 3666} |
| `chromeRendererMaxPssKb` | {'int': 3666} |
| `chromeRendererPssKb` | {'int': 3666} |
| `chromeRenderers` | {'int': 3666} |
| `chromeTabs` | {'int': 3666} |
| `chromeTabsProbedProfiles` | {'int': 3666} |
| `chromeUtilityPssKb` | {'int': 3666} |
| `desktopPssKb` | {'int': 3666} |
| `hostPssKb` | {'int': 3666} |
| `kind` | {'str': 3666} |
| `memAvailableKb` | {'int': 3666} |
| `memTotalKb` | {'int': 3666} |
| `otherPssKb` | {'int': 3666} |
| `processes` | {'int': 3666} |
| `pssFallbackProcesses` | {'int': 3666} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
