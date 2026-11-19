# sandbox_telemetry_parse — 2026-11-19 22:51:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1473866 lines=3268
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3257 |
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
| `chromeBrowserPssKb` | {'int': 3257} |
| `chromeGpuPssKb` | {'int': 3257} |
| `chromeOtherPssKb` | {'int': 3257} |
| `chromeProcesses` | {'int': 3257} |
| `chromeProfiles` | {'int': 3257} |
| `chromeRendererMaxPssKb` | {'int': 3257} |
| `chromeRendererPssKb` | {'int': 3257} |
| `chromeRenderers` | {'int': 3257} |
| `chromeTabs` | {'int': 3257} |
| `chromeTabsProbedProfiles` | {'int': 3257} |
| `chromeUtilityPssKb` | {'int': 3257} |
| `desktopPssKb` | {'int': 3257} |
| `hostPssKb` | {'int': 3257} |
| `kind` | {'str': 3257} |
| `memAvailableKb` | {'int': 3257} |
| `memTotalKb` | {'int': 3257} |
| `otherPssKb` | {'int': 3257} |
| `processes` | {'int': 3257} |
| `pssFallbackProcesses` | {'int': 3257} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
