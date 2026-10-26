# sandbox_telemetry_parse — 2026-10-26 18:02:04 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=59724 lines=136
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 131 |
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
| `chromeBrowserPssKb` | {'int': 131} |
| `chromeGpuPssKb` | {'int': 131} |
| `chromeOtherPssKb` | {'int': 131} |
| `chromeProcesses` | {'int': 131} |
| `chromeProfiles` | {'int': 131} |
| `chromeRendererMaxPssKb` | {'int': 131} |
| `chromeRendererPssKb` | {'int': 131} |
| `chromeRenderers` | {'int': 131} |
| `chromeTabs` | {'int': 131} |
| `chromeTabsProbedProfiles` | {'int': 131} |
| `chromeUtilityPssKb` | {'int': 131} |
| `desktopPssKb` | {'int': 131} |
| `hostPssKb` | {'int': 131} |
| `kind` | {'str': 131} |
| `memAvailableKb` | {'int': 131} |
| `memTotalKb` | {'int': 131} |
| `otherPssKb` | {'int': 131} |
| `processes` | {'int': 131} |
| `pssFallbackProcesses` | {'int': 131} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
