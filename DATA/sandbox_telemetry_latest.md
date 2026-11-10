# sandbox_telemetry_parse — 2026-11-10 19:40:21 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1289750 lines=2858
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2849 |
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
| `chromeBrowserPssKb` | {'int': 2849} |
| `chromeGpuPssKb` | {'int': 2849} |
| `chromeOtherPssKb` | {'int': 2849} |
| `chromeProcesses` | {'int': 2849} |
| `chromeProfiles` | {'int': 2849} |
| `chromeRendererMaxPssKb` | {'int': 2849} |
| `chromeRendererPssKb` | {'int': 2849} |
| `chromeRenderers` | {'int': 2849} |
| `chromeTabs` | {'int': 2849} |
| `chromeTabsProbedProfiles` | {'int': 2849} |
| `chromeUtilityPssKb` | {'int': 2849} |
| `desktopPssKb` | {'int': 2849} |
| `hostPssKb` | {'int': 2849} |
| `kind` | {'str': 2849} |
| `memAvailableKb` | {'int': 2849} |
| `memTotalKb` | {'int': 2849} |
| `otherPssKb` | {'int': 2849} |
| `processes` | {'int': 2849} |
| `pssFallbackProcesses` | {'int': 2849} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
