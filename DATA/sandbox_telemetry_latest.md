# sandbox_telemetry_parse — 2026-11-06 12:29:34 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=11856 lines=32
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 25 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `chromeBrowserPssKb` | {'int': 25} |
| `chromeGpuPssKb` | {'int': 25} |
| `chromeOtherPssKb` | {'int': 25} |
| `chromeProcesses` | {'int': 25} |
| `chromeProfiles` | {'int': 25} |
| `chromeRendererMaxPssKb` | {'int': 25} |
| `chromeRendererPssKb` | {'int': 25} |
| `chromeRenderers` | {'int': 25} |
| `chromeTabs` | {'int': 25} |
| `chromeTabsProbedProfiles` | {'int': 25} |
| `chromeUtilityPssKb` | {'int': 25} |
| `desktopPssKb` | {'int': 25} |
| `hostPssKb` | {'int': 25} |
| `kind` | {'str': 25} |
| `memAvailableKb` | {'int': 25} |
| `memTotalKb` | {'int': 25} |
| `otherPssKb` | {'int': 25} |
| `processes` | {'int': 25} |
| `pssFallbackProcesses` | {'int': 25} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
