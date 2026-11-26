# sandbox_telemetry_parse — 2026-11-27 00:08:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=148083 lines=334
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 326 |
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
| `chromeBrowserPssKb` | {'int': 326} |
| `chromeGpuPssKb` | {'int': 326} |
| `chromeOtherPssKb` | {'int': 326} |
| `chromeProcesses` | {'int': 326} |
| `chromeProfiles` | {'int': 326} |
| `chromeRendererMaxPssKb` | {'int': 326} |
| `chromeRendererPssKb` | {'int': 326} |
| `chromeRenderers` | {'int': 326} |
| `chromeTabs` | {'int': 326} |
| `chromeTabsProbedProfiles` | {'int': 326} |
| `chromeUtilityPssKb` | {'int': 326} |
| `desktopPssKb` | {'int': 326} |
| `hostPssKb` | {'int': 326} |
| `kind` | {'str': 326} |
| `memAvailableKb` | {'int': 326} |
| `memTotalKb` | {'int': 326} |
| `otherPssKb` | {'int': 326} |
| `processes` | {'int': 326} |
| `pssFallbackProcesses` | {'int': 326} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
