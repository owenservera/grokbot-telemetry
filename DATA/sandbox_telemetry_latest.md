# sandbox_telemetry_parse — 2026-10-27 12:25:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=512308 lines=1136
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1131 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
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
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `chromeBrowserPssKb` | {'int': 1131} |
| `chromeGpuPssKb` | {'int': 1131} |
| `chromeOtherPssKb` | {'int': 1131} |
| `chromeProcesses` | {'int': 1131} |
| `chromeProfiles` | {'int': 1131} |
| `chromeRendererMaxPssKb` | {'int': 1131} |
| `chromeRendererPssKb` | {'int': 1131} |
| `chromeRenderers` | {'int': 1131} |
| `chromeTabs` | {'int': 1131} |
| `chromeTabsProbedProfiles` | {'int': 1131} |
| `chromeUtilityPssKb` | {'int': 1131} |
| `desktopPssKb` | {'int': 1131} |
| `hostPssKb` | {'int': 1131} |
| `kind` | {'str': 1131} |
| `memAvailableKb` | {'int': 1131} |
| `memTotalKb` | {'int': 1131} |
| `otherPssKb` | {'int': 1131} |
| `processes` | {'int': 1131} |
| `pssFallbackProcesses` | {'int': 1131} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
