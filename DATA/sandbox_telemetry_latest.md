# sandbox_telemetry_parse — 2026-11-11 06:22:57 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1505520 lines=3335
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3326 |
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
| `chromeBrowserPssKb` | {'int': 3326} |
| `chromeGpuPssKb` | {'int': 3326} |
| `chromeOtherPssKb` | {'int': 3326} |
| `chromeProcesses` | {'int': 3326} |
| `chromeProfiles` | {'int': 3326} |
| `chromeRendererMaxPssKb` | {'int': 3326} |
| `chromeRendererPssKb` | {'int': 3326} |
| `chromeRenderers` | {'int': 3326} |
| `chromeTabs` | {'int': 3326} |
| `chromeTabsProbedProfiles` | {'int': 3326} |
| `chromeUtilityPssKb` | {'int': 3326} |
| `desktopPssKb` | {'int': 3326} |
| `hostPssKb` | {'int': 3326} |
| `kind` | {'str': 3326} |
| `memAvailableKb` | {'int': 3326} |
| `memTotalKb` | {'int': 3326} |
| `otherPssKb` | {'int': 3326} |
| `processes` | {'int': 3326} |
| `pssFallbackProcesses` | {'int': 3326} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
