# sandbox_telemetry_parse — 2026-11-11 22:49:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1857147 lines=4112
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4103 |
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
| `chromeBrowserPssKb` | {'int': 4103} |
| `chromeGpuPssKb` | {'int': 4103} |
| `chromeOtherPssKb` | {'int': 4103} |
| `chromeProcesses` | {'int': 4103} |
| `chromeProfiles` | {'int': 4103} |
| `chromeRendererMaxPssKb` | {'int': 4103} |
| `chromeRendererPssKb` | {'int': 4103} |
| `chromeRenderers` | {'int': 4103} |
| `chromeTabs` | {'int': 4103} |
| `chromeTabsProbedProfiles` | {'int': 4103} |
| `chromeUtilityPssKb` | {'int': 4103} |
| `desktopPssKb` | {'int': 4103} |
| `hostPssKb` | {'int': 4103} |
| `kind` | {'str': 4103} |
| `memAvailableKb` | {'int': 4103} |
| `memTotalKb` | {'int': 4103} |
| `otherPssKb` | {'int': 4103} |
| `processes` | {'int': 4103} |
| `pssFallbackProcesses` | {'int': 4103} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
