# sandbox_telemetry_parse — 2026-11-28 22:37:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1089287 lines=2414
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2406 |
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
| `chromeBrowserPssKb` | {'int': 2406} |
| `chromeGpuPssKb` | {'int': 2406} |
| `chromeOtherPssKb` | {'int': 2406} |
| `chromeProcesses` | {'int': 2406} |
| `chromeProfiles` | {'int': 2406} |
| `chromeRendererMaxPssKb` | {'int': 2406} |
| `chromeRendererPssKb` | {'int': 2406} |
| `chromeRenderers` | {'int': 2406} |
| `chromeTabs` | {'int': 2406} |
| `chromeTabsProbedProfiles` | {'int': 2406} |
| `chromeUtilityPssKb` | {'int': 2406} |
| `desktopPssKb` | {'int': 2406} |
| `hostPssKb` | {'int': 2406} |
| `kind` | {'str': 2406} |
| `memAvailableKb` | {'int': 2406} |
| `memTotalKb` | {'int': 2406} |
| `otherPssKb` | {'int': 2406} |
| `processes` | {'int': 2406} |
| `pssFallbackProcesses` | {'int': 2406} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
