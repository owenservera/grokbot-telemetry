# sandbox_telemetry_parse — 2026-11-11 12:59:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1640810 lines=3634
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3625 |
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
| `chromeBrowserPssKb` | {'int': 3625} |
| `chromeGpuPssKb` | {'int': 3625} |
| `chromeOtherPssKb` | {'int': 3625} |
| `chromeProcesses` | {'int': 3625} |
| `chromeProfiles` | {'int': 3625} |
| `chromeRendererMaxPssKb` | {'int': 3625} |
| `chromeRendererPssKb` | {'int': 3625} |
| `chromeRenderers` | {'int': 3625} |
| `chromeTabs` | {'int': 3625} |
| `chromeTabsProbedProfiles` | {'int': 3625} |
| `chromeUtilityPssKb` | {'int': 3625} |
| `desktopPssKb` | {'int': 3625} |
| `hostPssKb` | {'int': 3625} |
| `kind` | {'str': 3625} |
| `memAvailableKb` | {'int': 3625} |
| `memTotalKb` | {'int': 3625} |
| `otherPssKb` | {'int': 3625} |
| `processes` | {'int': 3625} |
| `pssFallbackProcesses` | {'int': 3625} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
