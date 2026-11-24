# sandbox_telemetry_parse — 2026-11-24 07:17:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2181605 lines=4836
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4821 |
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
| `chromeBrowserPssKb` | {'int': 4821} |
| `chromeGpuPssKb` | {'int': 4821} |
| `chromeOtherPssKb` | {'int': 4821} |
| `chromeProcesses` | {'int': 4821} |
| `chromeProfiles` | {'int': 4821} |
| `chromeRendererMaxPssKb` | {'int': 4821} |
| `chromeRendererPssKb` | {'int': 4821} |
| `chromeRenderers` | {'int': 4821} |
| `chromeTabs` | {'int': 4821} |
| `chromeTabsProbedProfiles` | {'int': 4821} |
| `chromeUtilityPssKb` | {'int': 4821} |
| `desktopPssKb` | {'int': 4821} |
| `hostPssKb` | {'int': 4821} |
| `kind` | {'str': 4821} |
| `memAvailableKb` | {'int': 4821} |
| `memTotalKb` | {'int': 4821} |
| `otherPssKb` | {'int': 4821} |
| `processes` | {'int': 4821} |
| `pssFallbackProcesses` | {'int': 4821} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
