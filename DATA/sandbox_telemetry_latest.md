# sandbox_telemetry_parse — 2026-10-12 19:10:04 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=648104 lines=1438
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1433 |
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
| `chromeBrowserPssKb` | {'int': 1433} |
| `chromeGpuPssKb` | {'int': 1433} |
| `chromeOtherPssKb` | {'int': 1433} |
| `chromeProcesses` | {'int': 1433} |
| `chromeProfiles` | {'int': 1433} |
| `chromeRendererMaxPssKb` | {'int': 1433} |
| `chromeRendererPssKb` | {'int': 1433} |
| `chromeRenderers` | {'int': 1433} |
| `chromeTabs` | {'int': 1433} |
| `chromeTabsProbedProfiles` | {'int': 1433} |
| `chromeUtilityPssKb` | {'int': 1433} |
| `desktopPssKb` | {'int': 1433} |
| `hostPssKb` | {'int': 1433} |
| `kind` | {'str': 1433} |
| `memAvailableKb` | {'int': 1433} |
| `memTotalKb` | {'int': 1433} |
| `otherPssKb` | {'int': 1433} |
| `processes` | {'int': 1433} |
| `pssFallbackProcesses` | {'int': 1433} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
