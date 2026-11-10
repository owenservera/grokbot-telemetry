# sandbox_telemetry_parse — 2026-11-10 16:53:51 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1227709 lines=2721
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2712 |
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
| `chromeBrowserPssKb` | {'int': 2712} |
| `chromeGpuPssKb` | {'int': 2712} |
| `chromeOtherPssKb` | {'int': 2712} |
| `chromeProcesses` | {'int': 2712} |
| `chromeProfiles` | {'int': 2712} |
| `chromeRendererMaxPssKb` | {'int': 2712} |
| `chromeRendererPssKb` | {'int': 2712} |
| `chromeRenderers` | {'int': 2712} |
| `chromeTabs` | {'int': 2712} |
| `chromeTabsProbedProfiles` | {'int': 2712} |
| `chromeUtilityPssKb` | {'int': 2712} |
| `desktopPssKb` | {'int': 2712} |
| `hostPssKb` | {'int': 2712} |
| `kind` | {'str': 2712} |
| `memAvailableKb` | {'int': 2712} |
| `memTotalKb` | {'int': 2712} |
| `otherPssKb` | {'int': 2712} |
| `processes` | {'int': 2712} |
| `pssFallbackProcesses` | {'int': 2712} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
