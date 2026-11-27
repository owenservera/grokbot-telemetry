# sandbox_telemetry_parse — 2026-11-27 20:06:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=571582 lines=1270
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1262 |
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
| `chromeBrowserPssKb` | {'int': 1262} |
| `chromeGpuPssKb` | {'int': 1262} |
| `chromeOtherPssKb` | {'int': 1262} |
| `chromeProcesses` | {'int': 1262} |
| `chromeProfiles` | {'int': 1262} |
| `chromeRendererMaxPssKb` | {'int': 1262} |
| `chromeRendererPssKb` | {'int': 1262} |
| `chromeRenderers` | {'int': 1262} |
| `chromeTabs` | {'int': 1262} |
| `chromeTabsProbedProfiles` | {'int': 1262} |
| `chromeUtilityPssKb` | {'int': 1262} |
| `desktopPssKb` | {'int': 1262} |
| `hostPssKb` | {'int': 1262} |
| `kind` | {'str': 1262} |
| `memAvailableKb` | {'int': 1262} |
| `memTotalKb` | {'int': 1262} |
| `otherPssKb` | {'int': 1262} |
| `processes` | {'int': 1262} |
| `pssFallbackProcesses` | {'int': 1262} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
