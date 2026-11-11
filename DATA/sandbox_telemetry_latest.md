# sandbox_telemetry_parse — 2026-11-11 14:20:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1670202 lines=3699
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3690 |
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
| `chromeBrowserPssKb` | {'int': 3690} |
| `chromeGpuPssKb` | {'int': 3690} |
| `chromeOtherPssKb` | {'int': 3690} |
| `chromeProcesses` | {'int': 3690} |
| `chromeProfiles` | {'int': 3690} |
| `chromeRendererMaxPssKb` | {'int': 3690} |
| `chromeRendererPssKb` | {'int': 3690} |
| `chromeRenderers` | {'int': 3690} |
| `chromeTabs` | {'int': 3690} |
| `chromeTabsProbedProfiles` | {'int': 3690} |
| `chromeUtilityPssKb` | {'int': 3690} |
| `desktopPssKb` | {'int': 3690} |
| `hostPssKb` | {'int': 3690} |
| `kind` | {'str': 3690} |
| `memAvailableKb` | {'int': 3690} |
| `memTotalKb` | {'int': 3690} |
| `otherPssKb` | {'int': 3690} |
| `processes` | {'int': 3690} |
| `pssFallbackProcesses` | {'int': 3690} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
