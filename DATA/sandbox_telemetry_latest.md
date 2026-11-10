# sandbox_telemetry_parse — 2026-11-10 16:49:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1225897 lines=2717
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2708 |
| `egress_tunnel` | 5 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 2708} |
| `chromeGpuPssKb` | {'int': 2708} |
| `chromeOtherPssKb` | {'int': 2708} |
| `chromeProcesses` | {'int': 2708} |
| `chromeProfiles` | {'int': 2708} |
| `chromeRendererMaxPssKb` | {'int': 2708} |
| `chromeRendererPssKb` | {'int': 2708} |
| `chromeRenderers` | {'int': 2708} |
| `chromeTabs` | {'int': 2708} |
| `chromeTabsProbedProfiles` | {'int': 2708} |
| `chromeUtilityPssKb` | {'int': 2708} |
| `desktopPssKb` | {'int': 2708} |
| `hostPssKb` | {'int': 2708} |
| `kind` | {'str': 2708} |
| `memAvailableKb` | {'int': 2708} |
| `memTotalKb` | {'int': 2708} |
| `otherPssKb` | {'int': 2708} |
| `processes` | {'int': 2708} |
| `pssFallbackProcesses` | {'int': 2708} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
