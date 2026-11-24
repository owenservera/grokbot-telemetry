# sandbox_telemetry_parse — 2026-11-24 03:43:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2114675 lines=4688
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4673 |
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
| `chromeBrowserPssKb` | {'int': 4673} |
| `chromeGpuPssKb` | {'int': 4673} |
| `chromeOtherPssKb` | {'int': 4673} |
| `chromeProcesses` | {'int': 4673} |
| `chromeProfiles` | {'int': 4673} |
| `chromeRendererMaxPssKb` | {'int': 4673} |
| `chromeRendererPssKb` | {'int': 4673} |
| `chromeRenderers` | {'int': 4673} |
| `chromeTabs` | {'int': 4673} |
| `chromeTabsProbedProfiles` | {'int': 4673} |
| `chromeUtilityPssKb` | {'int': 4673} |
| `desktopPssKb` | {'int': 4673} |
| `hostPssKb` | {'int': 4673} |
| `kind` | {'str': 4673} |
| `memAvailableKb` | {'int': 4673} |
| `memTotalKb` | {'int': 4673} |
| `otherPssKb` | {'int': 4673} |
| `processes` | {'int': 4673} |
| `pssFallbackProcesses` | {'int': 4673} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
