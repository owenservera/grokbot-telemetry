# sandbox_telemetry_parse — 2026-11-28 07:52:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=795993 lines=1766
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1758 |
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
| `chromeBrowserPssKb` | {'int': 1758} |
| `chromeGpuPssKb` | {'int': 1758} |
| `chromeOtherPssKb` | {'int': 1758} |
| `chromeProcesses` | {'int': 1758} |
| `chromeProfiles` | {'int': 1758} |
| `chromeRendererMaxPssKb` | {'int': 1758} |
| `chromeRendererPssKb` | {'int': 1758} |
| `chromeRenderers` | {'int': 1758} |
| `chromeTabs` | {'int': 1758} |
| `chromeTabsProbedProfiles` | {'int': 1758} |
| `chromeUtilityPssKb` | {'int': 1758} |
| `desktopPssKb` | {'int': 1758} |
| `hostPssKb` | {'int': 1758} |
| `kind` | {'str': 1758} |
| `memAvailableKb` | {'int': 1758} |
| `memTotalKb` | {'int': 1758} |
| `otherPssKb` | {'int': 1758} |
| `processes` | {'int': 1758} |
| `pssFallbackProcesses` | {'int': 1758} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
