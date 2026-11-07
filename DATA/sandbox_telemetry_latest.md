# sandbox_telemetry_parse — 2026-11-07 05:10:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=322318 lines=720
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 711 |
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
| `chromeBrowserPssKb` | {'int': 711} |
| `chromeGpuPssKb` | {'int': 711} |
| `chromeOtherPssKb` | {'int': 711} |
| `chromeProcesses` | {'int': 711} |
| `chromeProfiles` | {'int': 711} |
| `chromeRendererMaxPssKb` | {'int': 711} |
| `chromeRendererPssKb` | {'int': 711} |
| `chromeRenderers` | {'int': 711} |
| `chromeTabs` | {'int': 711} |
| `chromeTabsProbedProfiles` | {'int': 711} |
| `chromeUtilityPssKb` | {'int': 711} |
| `desktopPssKb` | {'int': 711} |
| `hostPssKb` | {'int': 711} |
| `kind` | {'str': 711} |
| `memAvailableKb` | {'int': 711} |
| `memTotalKb` | {'int': 711} |
| `otherPssKb` | {'int': 711} |
| `processes` | {'int': 711} |
| `pssFallbackProcesses` | {'int': 711} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
