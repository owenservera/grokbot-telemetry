# sandbox_telemetry_parse — 2026-10-06 23:23:16 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=664586 lines=1462
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1457 |
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
| `chromeBrowserPssKb` | {'int': 1457} |
| `chromeGpuPssKb` | {'int': 1457} |
| `chromeOtherPssKb` | {'int': 1457} |
| `chromeProcesses` | {'int': 1457} |
| `chromeProfiles` | {'int': 1457} |
| `chromeRendererMaxPssKb` | {'int': 1457} |
| `chromeRendererPssKb` | {'int': 1457} |
| `chromeRenderers` | {'int': 1457} |
| `chromeTabs` | {'int': 1457} |
| `chromeTabsProbedProfiles` | {'int': 1457} |
| `chromeUtilityPssKb` | {'int': 1457} |
| `desktopPssKb` | {'int': 1457} |
| `hostPssKb` | {'int': 1457} |
| `kind` | {'str': 1457} |
| `memAvailableKb` | {'int': 1457} |
| `memTotalKb` | {'int': 1457} |
| `otherPssKb` | {'int': 1457} |
| `processes` | {'int': 1457} |
| `pssFallbackProcesses` | {'int': 1457} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
