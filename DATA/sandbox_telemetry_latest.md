# sandbox_telemetry_parse — 2026-11-09 23:55:18 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=894206 lines=1984
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1975 |
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
| `chromeBrowserPssKb` | {'int': 1975} |
| `chromeGpuPssKb` | {'int': 1975} |
| `chromeOtherPssKb` | {'int': 1975} |
| `chromeProcesses` | {'int': 1975} |
| `chromeProfiles` | {'int': 1975} |
| `chromeRendererMaxPssKb` | {'int': 1975} |
| `chromeRendererPssKb` | {'int': 1975} |
| `chromeRenderers` | {'int': 1975} |
| `chromeTabs` | {'int': 1975} |
| `chromeTabsProbedProfiles` | {'int': 1975} |
| `chromeUtilityPssKb` | {'int': 1975} |
| `desktopPssKb` | {'int': 1975} |
| `hostPssKb` | {'int': 1975} |
| `kind` | {'str': 1975} |
| `memAvailableKb` | {'int': 1975} |
| `memTotalKb` | {'int': 1975} |
| `otherPssKb` | {'int': 1975} |
| `processes` | {'int': 1975} |
| `pssFallbackProcesses` | {'int': 1975} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
