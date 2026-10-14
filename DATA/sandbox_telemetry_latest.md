# sandbox_telemetry_parse — 2026-10-14 11:12:18 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=253038 lines=564
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 559 |
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
| `chromeBrowserPssKb` | {'int': 559} |
| `chromeGpuPssKb` | {'int': 559} |
| `chromeOtherPssKb` | {'int': 559} |
| `chromeProcesses` | {'int': 559} |
| `chromeProfiles` | {'int': 559} |
| `chromeRendererMaxPssKb` | {'int': 559} |
| `chromeRendererPssKb` | {'int': 559} |
| `chromeRenderers` | {'int': 559} |
| `chromeTabs` | {'int': 559} |
| `chromeTabsProbedProfiles` | {'int': 559} |
| `chromeUtilityPssKb` | {'int': 559} |
| `desktopPssKb` | {'int': 559} |
| `hostPssKb` | {'int': 559} |
| `kind` | {'str': 559} |
| `memAvailableKb` | {'int': 559} |
| `memTotalKb` | {'int': 559} |
| `otherPssKb` | {'int': 559} |
| `processes` | {'int': 559} |
| `pssFallbackProcesses` | {'int': 559} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
