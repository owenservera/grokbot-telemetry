# sandbox_telemetry_parse — 2026-11-11 08:39:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1548026 lines=3429
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3420 |
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
| `chromeBrowserPssKb` | {'int': 3420} |
| `chromeGpuPssKb` | {'int': 3420} |
| `chromeOtherPssKb` | {'int': 3420} |
| `chromeProcesses` | {'int': 3420} |
| `chromeProfiles` | {'int': 3420} |
| `chromeRendererMaxPssKb` | {'int': 3420} |
| `chromeRendererPssKb` | {'int': 3420} |
| `chromeRenderers` | {'int': 3420} |
| `chromeTabs` | {'int': 3420} |
| `chromeTabsProbedProfiles` | {'int': 3420} |
| `chromeUtilityPssKb` | {'int': 3420} |
| `desktopPssKb` | {'int': 3420} |
| `hostPssKb` | {'int': 3420} |
| `kind` | {'str': 3420} |
| `memAvailableKb` | {'int': 3420} |
| `memTotalKb` | {'int': 3420} |
| `otherPssKb` | {'int': 3420} |
| `processes` | {'int': 3420} |
| `pssFallbackProcesses` | {'int': 3420} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
