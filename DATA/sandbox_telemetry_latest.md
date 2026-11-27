# sandbox_telemetry_parse — 2026-11-27 03:04:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=206444 lines=463
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 455 |
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
| `chromeBrowserPssKb` | {'int': 455} |
| `chromeGpuPssKb` | {'int': 455} |
| `chromeOtherPssKb` | {'int': 455} |
| `chromeProcesses` | {'int': 455} |
| `chromeProfiles` | {'int': 455} |
| `chromeRendererMaxPssKb` | {'int': 455} |
| `chromeRendererPssKb` | {'int': 455} |
| `chromeRenderers` | {'int': 455} |
| `chromeTabs` | {'int': 455} |
| `chromeTabsProbedProfiles` | {'int': 455} |
| `chromeUtilityPssKb` | {'int': 455} |
| `desktopPssKb` | {'int': 455} |
| `hostPssKb` | {'int': 455} |
| `kind` | {'str': 455} |
| `memAvailableKb` | {'int': 455} |
| `memTotalKb` | {'int': 455} |
| `otherPssKb` | {'int': 455} |
| `processes` | {'int': 455} |
| `pssFallbackProcesses` | {'int': 455} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
