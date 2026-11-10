# sandbox_telemetry_parse — 2026-11-10 19:51:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1292462 lines=2864
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2855 |
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
| `chromeBrowserPssKb` | {'int': 2855} |
| `chromeGpuPssKb` | {'int': 2855} |
| `chromeOtherPssKb` | {'int': 2855} |
| `chromeProcesses` | {'int': 2855} |
| `chromeProfiles` | {'int': 2855} |
| `chromeRendererMaxPssKb` | {'int': 2855} |
| `chromeRendererPssKb` | {'int': 2855} |
| `chromeRenderers` | {'int': 2855} |
| `chromeTabs` | {'int': 2855} |
| `chromeTabsProbedProfiles` | {'int': 2855} |
| `chromeUtilityPssKb` | {'int': 2855} |
| `desktopPssKb` | {'int': 2855} |
| `hostPssKb` | {'int': 2855} |
| `kind` | {'str': 2855} |
| `memAvailableKb` | {'int': 2855} |
| `memTotalKb` | {'int': 2855} |
| `otherPssKb` | {'int': 2855} |
| `processes` | {'int': 2855} |
| `pssFallbackProcesses` | {'int': 2855} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
