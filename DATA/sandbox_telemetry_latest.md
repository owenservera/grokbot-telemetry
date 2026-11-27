# sandbox_telemetry_parse — 2026-11-27 17:18:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=514980 lines=1145
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1137 |
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
| `chromeBrowserPssKb` | {'int': 1137} |
| `chromeGpuPssKb` | {'int': 1137} |
| `chromeOtherPssKb` | {'int': 1137} |
| `chromeProcesses` | {'int': 1137} |
| `chromeProfiles` | {'int': 1137} |
| `chromeRendererMaxPssKb` | {'int': 1137} |
| `chromeRendererPssKb` | {'int': 1137} |
| `chromeRenderers` | {'int': 1137} |
| `chromeTabs` | {'int': 1137} |
| `chromeTabsProbedProfiles` | {'int': 1137} |
| `chromeUtilityPssKb` | {'int': 1137} |
| `desktopPssKb` | {'int': 1137} |
| `hostPssKb` | {'int': 1137} |
| `kind` | {'str': 1137} |
| `memAvailableKb` | {'int': 1137} |
| `memTotalKb` | {'int': 1137} |
| `otherPssKb` | {'int': 1137} |
| `processes` | {'int': 1137} |
| `pssFallbackProcesses` | {'int': 1137} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
