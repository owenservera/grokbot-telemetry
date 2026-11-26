# sandbox_telemetry_parse — 2026-11-26 02:08:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3026961 lines=6705
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6690 |
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
| `chromeBrowserPssKb` | {'int': 6690} |
| `chromeGpuPssKb` | {'int': 6690} |
| `chromeOtherPssKb` | {'int': 6690} |
| `chromeProcesses` | {'int': 6690} |
| `chromeProfiles` | {'int': 6690} |
| `chromeRendererMaxPssKb` | {'int': 6690} |
| `chromeRendererPssKb` | {'int': 6690} |
| `chromeRenderers` | {'int': 6690} |
| `chromeTabs` | {'int': 6690} |
| `chromeTabsProbedProfiles` | {'int': 6690} |
| `chromeUtilityPssKb` | {'int': 6690} |
| `desktopPssKb` | {'int': 6690} |
| `hostPssKb` | {'int': 6690} |
| `kind` | {'str': 6690} |
| `memAvailableKb` | {'int': 6690} |
| `memTotalKb` | {'int': 6690} |
| `otherPssKb` | {'int': 6690} |
| `processes` | {'int': 6690} |
| `pssFallbackProcesses` | {'int': 6690} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
