# sandbox_telemetry_parse — 2026-10-14 11:05:25 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=250326 lines=558
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 553 |
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
| `chromeBrowserPssKb` | {'int': 553} |
| `chromeGpuPssKb` | {'int': 553} |
| `chromeOtherPssKb` | {'int': 553} |
| `chromeProcesses` | {'int': 553} |
| `chromeProfiles` | {'int': 553} |
| `chromeRendererMaxPssKb` | {'int': 553} |
| `chromeRendererPssKb` | {'int': 553} |
| `chromeRenderers` | {'int': 553} |
| `chromeTabs` | {'int': 553} |
| `chromeTabsProbedProfiles` | {'int': 553} |
| `chromeUtilityPssKb` | {'int': 553} |
| `desktopPssKb` | {'int': 553} |
| `hostPssKb` | {'int': 553} |
| `kind` | {'str': 553} |
| `memAvailableKb` | {'int': 553} |
| `memTotalKb` | {'int': 553} |
| `otherPssKb` | {'int': 553} |
| `processes` | {'int': 553} |
| `pssFallbackProcesses` | {'int': 553} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
