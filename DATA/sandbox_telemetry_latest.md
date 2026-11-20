# sandbox_telemetry_parse — 2026-11-20 10:27:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1676403 lines=3716
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3705 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3705} |
| `chromeGpuPssKb` | {'int': 3705} |
| `chromeOtherPssKb` | {'int': 3705} |
| `chromeProcesses` | {'int': 3705} |
| `chromeProfiles` | {'int': 3705} |
| `chromeRendererMaxPssKb` | {'int': 3705} |
| `chromeRendererPssKb` | {'int': 3705} |
| `chromeRenderers` | {'int': 3705} |
| `chromeTabs` | {'int': 3705} |
| `chromeTabsProbedProfiles` | {'int': 3705} |
| `chromeUtilityPssKb` | {'int': 3705} |
| `desktopPssKb` | {'int': 3705} |
| `hostPssKb` | {'int': 3705} |
| `kind` | {'str': 3705} |
| `memAvailableKb` | {'int': 3705} |
| `memTotalKb` | {'int': 3705} |
| `otherPssKb` | {'int': 3705} |
| `processes` | {'int': 3705} |
| `pssFallbackProcesses` | {'int': 3705} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
