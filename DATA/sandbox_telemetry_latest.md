# sandbox_telemetry_parse — 2026-11-07 08:52:26 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=384251 lines=857
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 848 |
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
| `chromeBrowserPssKb` | {'int': 848} |
| `chromeGpuPssKb` | {'int': 848} |
| `chromeOtherPssKb` | {'int': 848} |
| `chromeProcesses` | {'int': 848} |
| `chromeProfiles` | {'int': 848} |
| `chromeRendererMaxPssKb` | {'int': 848} |
| `chromeRendererPssKb` | {'int': 848} |
| `chromeRenderers` | {'int': 848} |
| `chromeTabs` | {'int': 848} |
| `chromeTabsProbedProfiles` | {'int': 848} |
| `chromeUtilityPssKb` | {'int': 848} |
| `desktopPssKb` | {'int': 848} |
| `hostPssKb` | {'int': 848} |
| `kind` | {'str': 848} |
| `memAvailableKb` | {'int': 848} |
| `memTotalKb` | {'int': 848} |
| `otherPssKb` | {'int': 848} |
| `processes` | {'int': 848} |
| `pssFallbackProcesses` | {'int': 848} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
