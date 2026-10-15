# sandbox_telemetry_parse — 2026-10-15 17:10:50 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=963582 lines=2136
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2131 |
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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 2131} |
| `chromeGpuPssKb` | {'int': 2131} |
| `chromeOtherPssKb` | {'int': 2131} |
| `chromeProcesses` | {'int': 2131} |
| `chromeProfiles` | {'int': 2131} |
| `chromeRendererMaxPssKb` | {'int': 2131} |
| `chromeRendererPssKb` | {'int': 2131} |
| `chromeRenderers` | {'int': 2131} |
| `chromeTabs` | {'int': 2131} |
| `chromeTabsProbedProfiles` | {'int': 2131} |
| `chromeUtilityPssKb` | {'int': 2131} |
| `desktopPssKb` | {'int': 2131} |
| `hostPssKb` | {'int': 2131} |
| `kind` | {'str': 2131} |
| `memAvailableKb` | {'int': 2131} |
| `memTotalKb` | {'int': 2131} |
| `otherPssKb` | {'int': 2131} |
| `processes` | {'int': 2131} |
| `pssFallbackProcesses` | {'int': 2131} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
