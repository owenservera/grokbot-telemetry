# sandbox_telemetry_parse — 2026-11-26 02:36:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3036456 lines=6726
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6711 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 6711} |
| `chromeGpuPssKb` | {'int': 6711} |
| `chromeOtherPssKb` | {'int': 6711} |
| `chromeProcesses` | {'int': 6711} |
| `chromeProfiles` | {'int': 6711} |
| `chromeRendererMaxPssKb` | {'int': 6711} |
| `chromeRendererPssKb` | {'int': 6711} |
| `chromeRenderers` | {'int': 6711} |
| `chromeTabs` | {'int': 6711} |
| `chromeTabsProbedProfiles` | {'int': 6711} |
| `chromeUtilityPssKb` | {'int': 6711} |
| `desktopPssKb` | {'int': 6711} |
| `hostPssKb` | {'int': 6711} |
| `kind` | {'str': 6711} |
| `memAvailableKb` | {'int': 6711} |
| `memTotalKb` | {'int': 6711} |
| `otherPssKb` | {'int': 6711} |
| `processes` | {'int': 6711} |
| `pssFallbackProcesses` | {'int': 6711} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
