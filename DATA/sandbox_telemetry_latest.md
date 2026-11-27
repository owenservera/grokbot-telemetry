# sandbox_telemetry_parse — 2026-11-27 07:12:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=299149 lines=668
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 660 |
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
| `chromeBrowserPssKb` | {'int': 660} |
| `chromeGpuPssKb` | {'int': 660} |
| `chromeOtherPssKb` | {'int': 660} |
| `chromeProcesses` | {'int': 660} |
| `chromeProfiles` | {'int': 660} |
| `chromeRendererMaxPssKb` | {'int': 660} |
| `chromeRendererPssKb` | {'int': 660} |
| `chromeRenderers` | {'int': 660} |
| `chromeTabs` | {'int': 660} |
| `chromeTabsProbedProfiles` | {'int': 660} |
| `chromeUtilityPssKb` | {'int': 660} |
| `desktopPssKb` | {'int': 660} |
| `hostPssKb` | {'int': 660} |
| `kind` | {'str': 660} |
| `memAvailableKb` | {'int': 660} |
| `memTotalKb` | {'int': 660} |
| `otherPssKb` | {'int': 660} |
| `processes` | {'int': 660} |
| `pssFallbackProcesses` | {'int': 660} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
