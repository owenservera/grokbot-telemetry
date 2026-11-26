# sandbox_telemetry_parse — 2026-11-26 06:46:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3125135 lines=6922
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6907 |
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
| `chromeBrowserPssKb` | {'int': 6907} |
| `chromeGpuPssKb` | {'int': 6907} |
| `chromeOtherPssKb` | {'int': 6907} |
| `chromeProcesses` | {'int': 6907} |
| `chromeProfiles` | {'int': 6907} |
| `chromeRendererMaxPssKb` | {'int': 6907} |
| `chromeRendererPssKb` | {'int': 6907} |
| `chromeRenderers` | {'int': 6907} |
| `chromeTabs` | {'int': 6907} |
| `chromeTabsProbedProfiles` | {'int': 6907} |
| `chromeUtilityPssKb` | {'int': 6907} |
| `desktopPssKb` | {'int': 6907} |
| `hostPssKb` | {'int': 6907} |
| `kind` | {'str': 6907} |
| `memAvailableKb` | {'int': 6907} |
| `memTotalKb` | {'int': 6907} |
| `otherPssKb` | {'int': 6907} |
| `processes` | {'int': 6907} |
| `pssFallbackProcesses` | {'int': 6907} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
