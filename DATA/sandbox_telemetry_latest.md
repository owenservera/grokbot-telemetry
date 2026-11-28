# sandbox_telemetry_parse — 2026-11-28 06:46:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=774744 lines=1719
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1711 |
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
| `chromeBrowserPssKb` | {'int': 1711} |
| `chromeGpuPssKb` | {'int': 1711} |
| `chromeOtherPssKb` | {'int': 1711} |
| `chromeProcesses` | {'int': 1711} |
| `chromeProfiles` | {'int': 1711} |
| `chromeRendererMaxPssKb` | {'int': 1711} |
| `chromeRendererPssKb` | {'int': 1711} |
| `chromeRenderers` | {'int': 1711} |
| `chromeTabs` | {'int': 1711} |
| `chromeTabsProbedProfiles` | {'int': 1711} |
| `chromeUtilityPssKb` | {'int': 1711} |
| `desktopPssKb` | {'int': 1711} |
| `hostPssKb` | {'int': 1711} |
| `kind` | {'str': 1711} |
| `memAvailableKb` | {'int': 1711} |
| `memTotalKb` | {'int': 1711} |
| `otherPssKb` | {'int': 1711} |
| `processes` | {'int': 1711} |
| `pssFallbackProcesses` | {'int': 1711} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
