# sandbox_telemetry_parse — 2026-10-06 07:05:12 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=223178 lines=494
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 489 |
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
| `chromeBrowserPssKb` | {'int': 489} |
| `chromeGpuPssKb` | {'int': 489} |
| `chromeOtherPssKb` | {'int': 489} |
| `chromeProcesses` | {'int': 489} |
| `chromeProfiles` | {'int': 489} |
| `chromeRendererMaxPssKb` | {'int': 489} |
| `chromeRendererPssKb` | {'int': 489} |
| `chromeRenderers` | {'int': 489} |
| `chromeTabs` | {'int': 489} |
| `chromeTabsProbedProfiles` | {'int': 489} |
| `chromeUtilityPssKb` | {'int': 489} |
| `desktopPssKb` | {'int': 489} |
| `hostPssKb` | {'int': 489} |
| `kind` | {'str': 489} |
| `memAvailableKb` | {'int': 489} |
| `memTotalKb` | {'int': 489} |
| `otherPssKb` | {'int': 489} |
| `processes` | {'int': 489} |
| `pssFallbackProcesses` | {'int': 489} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
