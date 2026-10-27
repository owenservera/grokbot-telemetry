# sandbox_telemetry_parse — 2026-10-27 02:54:54 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=281648 lines=626
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 621 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
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
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `chromeBrowserPssKb` | {'int': 621} |
| `chromeGpuPssKb` | {'int': 621} |
| `chromeOtherPssKb` | {'int': 621} |
| `chromeProcesses` | {'int': 621} |
| `chromeProfiles` | {'int': 621} |
| `chromeRendererMaxPssKb` | {'int': 621} |
| `chromeRendererPssKb` | {'int': 621} |
| `chromeRenderers` | {'int': 621} |
| `chromeTabs` | {'int': 621} |
| `chromeTabsProbedProfiles` | {'int': 621} |
| `chromeUtilityPssKb` | {'int': 621} |
| `desktopPssKb` | {'int': 621} |
| `hostPssKb` | {'int': 621} |
| `kind` | {'str': 621} |
| `memAvailableKb` | {'int': 621} |
| `memTotalKb` | {'int': 621} |
| `otherPssKb` | {'int': 621} |
| `processes` | {'int': 621} |
| `pssFallbackProcesses` | {'int': 621} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
