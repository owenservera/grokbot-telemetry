# sandbox_telemetry_parse — 2026-10-27 04:03:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=309220 lines=687
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 682 |
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
| `chromeBrowserPssKb` | {'int': 682} |
| `chromeGpuPssKb` | {'int': 682} |
| `chromeOtherPssKb` | {'int': 682} |
| `chromeProcesses` | {'int': 682} |
| `chromeProfiles` | {'int': 682} |
| `chromeRendererMaxPssKb` | {'int': 682} |
| `chromeRendererPssKb` | {'int': 682} |
| `chromeRenderers` | {'int': 682} |
| `chromeTabs` | {'int': 682} |
| `chromeTabsProbedProfiles` | {'int': 682} |
| `chromeUtilityPssKb` | {'int': 682} |
| `desktopPssKb` | {'int': 682} |
| `hostPssKb` | {'int': 682} |
| `kind` | {'str': 682} |
| `memAvailableKb` | {'int': 682} |
| `memTotalKb` | {'int': 682} |
| `otherPssKb` | {'int': 682} |
| `processes` | {'int': 682} |
| `pssFallbackProcesses` | {'int': 682} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
