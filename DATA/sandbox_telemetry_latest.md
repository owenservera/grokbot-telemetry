# sandbox_telemetry_parse — 2026-11-20 19:23:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1852991 lines=4108
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4095 |
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
| `chromeBrowserPssKb` | {'int': 4095} |
| `chromeGpuPssKb` | {'int': 4095} |
| `chromeOtherPssKb` | {'int': 4095} |
| `chromeProcesses` | {'int': 4095} |
| `chromeProfiles` | {'int': 4095} |
| `chromeRendererMaxPssKb` | {'int': 4095} |
| `chromeRendererPssKb` | {'int': 4095} |
| `chromeRenderers` | {'int': 4095} |
| `chromeTabs` | {'int': 4095} |
| `chromeTabsProbedProfiles` | {'int': 4095} |
| `chromeUtilityPssKb` | {'int': 4095} |
| `desktopPssKb` | {'int': 4095} |
| `hostPssKb` | {'int': 4095} |
| `kind` | {'str': 4095} |
| `memAvailableKb` | {'int': 4095} |
| `memTotalKb` | {'int': 4095} |
| `otherPssKb` | {'int': 4095} |
| `processes` | {'int': 4095} |
| `pssFallbackProcesses` | {'int': 4095} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
