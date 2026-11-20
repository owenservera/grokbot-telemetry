# sandbox_telemetry_parse — 2026-11-20 16:35:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1798684 lines=3988
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3975 |
| `egress_tunnel` | 9 |
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
| `attempt` | {'int': 9} |
| `exitStatus` | {'int': 4} |
| `kind` | {'str': 9} |
| `outcome` | {'str': 9} |
| `runtimeS` | {'int': 4} |

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
| `chromeBrowserPssKb` | {'int': 3975} |
| `chromeGpuPssKb` | {'int': 3975} |
| `chromeOtherPssKb` | {'int': 3975} |
| `chromeProcesses` | {'int': 3975} |
| `chromeProfiles` | {'int': 3975} |
| `chromeRendererMaxPssKb` | {'int': 3975} |
| `chromeRendererPssKb` | {'int': 3975} |
| `chromeRenderers` | {'int': 3975} |
| `chromeTabs` | {'int': 3975} |
| `chromeTabsProbedProfiles` | {'int': 3975} |
| `chromeUtilityPssKb` | {'int': 3975} |
| `desktopPssKb` | {'int': 3975} |
| `hostPssKb` | {'int': 3975} |
| `kind` | {'str': 3975} |
| `memAvailableKb` | {'int': 3975} |
| `memTotalKb` | {'int': 3975} |
| `otherPssKb` | {'int': 3975} |
| `processes` | {'int': 3975} |
| `pssFallbackProcesses` | {'int': 3975} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
