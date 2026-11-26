# sandbox_telemetry_parse — 2026-11-26 05:39:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3099339 lines=6865
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6850 |
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
| `chromeBrowserPssKb` | {'int': 6850} |
| `chromeGpuPssKb` | {'int': 6850} |
| `chromeOtherPssKb` | {'int': 6850} |
| `chromeProcesses` | {'int': 6850} |
| `chromeProfiles` | {'int': 6850} |
| `chromeRendererMaxPssKb` | {'int': 6850} |
| `chromeRendererPssKb` | {'int': 6850} |
| `chromeRenderers` | {'int': 6850} |
| `chromeTabs` | {'int': 6850} |
| `chromeTabsProbedProfiles` | {'int': 6850} |
| `chromeUtilityPssKb` | {'int': 6850} |
| `desktopPssKb` | {'int': 6850} |
| `hostPssKb` | {'int': 6850} |
| `kind` | {'str': 6850} |
| `memAvailableKb` | {'int': 6850} |
| `memTotalKb` | {'int': 6850} |
| `otherPssKb` | {'int': 6850} |
| `processes` | {'int': 6850} |
| `pssFallbackProcesses` | {'int': 6850} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
