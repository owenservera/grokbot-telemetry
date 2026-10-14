# sandbox_telemetry_parse — 2026-10-15 00:19:53 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=564014 lines=1252
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1247 |
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
| `chromeBrowserPssKb` | {'int': 1247} |
| `chromeGpuPssKb` | {'int': 1247} |
| `chromeOtherPssKb` | {'int': 1247} |
| `chromeProcesses` | {'int': 1247} |
| `chromeProfiles` | {'int': 1247} |
| `chromeRendererMaxPssKb` | {'int': 1247} |
| `chromeRendererPssKb` | {'int': 1247} |
| `chromeRenderers` | {'int': 1247} |
| `chromeTabs` | {'int': 1247} |
| `chromeTabsProbedProfiles` | {'int': 1247} |
| `chromeUtilityPssKb` | {'int': 1247} |
| `desktopPssKb` | {'int': 1247} |
| `hostPssKb` | {'int': 1247} |
| `kind` | {'str': 1247} |
| `memAvailableKb` | {'int': 1247} |
| `memTotalKb` | {'int': 1247} |
| `otherPssKb` | {'int': 1247} |
| `processes` | {'int': 1247} |
| `pssFallbackProcesses` | {'int': 1247} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
