# sandbox_telemetry_parse — 2026-11-09 17:10:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=757545 lines=1682
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1673 |
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
| `chromeBrowserPssKb` | {'int': 1673} |
| `chromeGpuPssKb` | {'int': 1673} |
| `chromeOtherPssKb` | {'int': 1673} |
| `chromeProcesses` | {'int': 1673} |
| `chromeProfiles` | {'int': 1673} |
| `chromeRendererMaxPssKb` | {'int': 1673} |
| `chromeRendererPssKb` | {'int': 1673} |
| `chromeRenderers` | {'int': 1673} |
| `chromeTabs` | {'int': 1673} |
| `chromeTabsProbedProfiles` | {'int': 1673} |
| `chromeUtilityPssKb` | {'int': 1673} |
| `desktopPssKb` | {'int': 1673} |
| `hostPssKb` | {'int': 1673} |
| `kind` | {'str': 1673} |
| `memAvailableKb` | {'int': 1673} |
| `memTotalKb` | {'int': 1673} |
| `otherPssKb` | {'int': 1673} |
| `processes` | {'int': 1673} |
| `pssFallbackProcesses` | {'int': 1673} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
