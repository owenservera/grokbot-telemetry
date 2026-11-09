# sandbox_telemetry_parse — 2026-11-09 14:54:05 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=706817 lines=1570
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1561 |
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
| `chromeBrowserPssKb` | {'int': 1561} |
| `chromeGpuPssKb` | {'int': 1561} |
| `chromeOtherPssKb` | {'int': 1561} |
| `chromeProcesses` | {'int': 1561} |
| `chromeProfiles` | {'int': 1561} |
| `chromeRendererMaxPssKb` | {'int': 1561} |
| `chromeRendererPssKb` | {'int': 1561} |
| `chromeRenderers` | {'int': 1561} |
| `chromeTabs` | {'int': 1561} |
| `chromeTabsProbedProfiles` | {'int': 1561} |
| `chromeUtilityPssKb` | {'int': 1561} |
| `desktopPssKb` | {'int': 1561} |
| `hostPssKb` | {'int': 1561} |
| `kind` | {'str': 1561} |
| `memAvailableKb` | {'int': 1561} |
| `memTotalKb` | {'int': 1561} |
| `otherPssKb` | {'int': 1561} |
| `processes` | {'int': 1561} |
| `pssFallbackProcesses` | {'int': 1561} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
