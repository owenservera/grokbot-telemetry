# sandbox_telemetry_parse — 2026-11-26 16:23:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3327965 lines=7372
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7355 |
| `egress_tunnel` | 13 |
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
| `attempt` | {'int': 13} |
| `exitStatus` | {'int': 6} |
| `kind` | {'str': 13} |
| `outcome` | {'str': 13} |
| `runtimeS` | {'int': 6} |

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
| `chromeBrowserPssKb` | {'int': 7355} |
| `chromeGpuPssKb` | {'int': 7355} |
| `chromeOtherPssKb` | {'int': 7355} |
| `chromeProcesses` | {'int': 7355} |
| `chromeProfiles` | {'int': 7355} |
| `chromeRendererMaxPssKb` | {'int': 7355} |
| `chromeRendererPssKb` | {'int': 7355} |
| `chromeRenderers` | {'int': 7355} |
| `chromeTabs` | {'int': 7355} |
| `chromeTabsProbedProfiles` | {'int': 7355} |
| `chromeUtilityPssKb` | {'int': 7355} |
| `desktopPssKb` | {'int': 7355} |
| `hostPssKb` | {'int': 7355} |
| `kind` | {'str': 7355} |
| `memAvailableKb` | {'int': 7355} |
| `memTotalKb` | {'int': 7355} |
| `otherPssKb` | {'int': 7355} |
| `processes` | {'int': 7355} |
| `pssFallbackProcesses` | {'int': 7355} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
