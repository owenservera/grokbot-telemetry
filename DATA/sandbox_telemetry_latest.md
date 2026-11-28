# sandbox_telemetry_parse — 2026-11-28 07:26:57 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=788761 lines=1750
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1742 |
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
| `chromeBrowserPssKb` | {'int': 1742} |
| `chromeGpuPssKb` | {'int': 1742} |
| `chromeOtherPssKb` | {'int': 1742} |
| `chromeProcesses` | {'int': 1742} |
| `chromeProfiles` | {'int': 1742} |
| `chromeRendererMaxPssKb` | {'int': 1742} |
| `chromeRendererPssKb` | {'int': 1742} |
| `chromeRenderers` | {'int': 1742} |
| `chromeTabs` | {'int': 1742} |
| `chromeTabsProbedProfiles` | {'int': 1742} |
| `chromeUtilityPssKb` | {'int': 1742} |
| `desktopPssKb` | {'int': 1742} |
| `hostPssKb` | {'int': 1742} |
| `kind` | {'str': 1742} |
| `memAvailableKb` | {'int': 1742} |
| `memTotalKb` | {'int': 1742} |
| `otherPssKb` | {'int': 1742} |
| `processes` | {'int': 1742} |
| `pssFallbackProcesses` | {'int': 1742} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
