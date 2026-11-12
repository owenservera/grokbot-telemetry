# sandbox_telemetry_parse — 2026-11-12 12:39:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2132257 lines=4720
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4711 |
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
| `chromeBrowserPssKb` | {'int': 4711} |
| `chromeGpuPssKb` | {'int': 4711} |
| `chromeOtherPssKb` | {'int': 4711} |
| `chromeProcesses` | {'int': 4711} |
| `chromeProfiles` | {'int': 4711} |
| `chromeRendererMaxPssKb` | {'int': 4711} |
| `chromeRendererPssKb` | {'int': 4711} |
| `chromeRenderers` | {'int': 4711} |
| `chromeTabs` | {'int': 4711} |
| `chromeTabsProbedProfiles` | {'int': 4711} |
| `chromeUtilityPssKb` | {'int': 4711} |
| `desktopPssKb` | {'int': 4711} |
| `hostPssKb` | {'int': 4711} |
| `kind` | {'str': 4711} |
| `memAvailableKb` | {'int': 4711} |
| `memTotalKb` | {'int': 4711} |
| `otherPssKb` | {'int': 4711} |
| `processes` | {'int': 4711} |
| `pssFallbackProcesses` | {'int': 4711} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
