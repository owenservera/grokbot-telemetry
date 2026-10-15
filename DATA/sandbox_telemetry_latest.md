# sandbox_telemetry_parse — 2026-10-15 06:09:15 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=704134 lines=1562
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1557 |
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
| `chromeBrowserPssKb` | {'int': 1557} |
| `chromeGpuPssKb` | {'int': 1557} |
| `chromeOtherPssKb` | {'int': 1557} |
| `chromeProcesses` | {'int': 1557} |
| `chromeProfiles` | {'int': 1557} |
| `chromeRendererMaxPssKb` | {'int': 1557} |
| `chromeRendererPssKb` | {'int': 1557} |
| `chromeRenderers` | {'int': 1557} |
| `chromeTabs` | {'int': 1557} |
| `chromeTabsProbedProfiles` | {'int': 1557} |
| `chromeUtilityPssKb` | {'int': 1557} |
| `desktopPssKb` | {'int': 1557} |
| `hostPssKb` | {'int': 1557} |
| `kind` | {'str': 1557} |
| `memAvailableKb` | {'int': 1557} |
| `memTotalKb` | {'int': 1557} |
| `otherPssKb` | {'int': 1557} |
| `processes` | {'int': 1557} |
| `pssFallbackProcesses` | {'int': 1557} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
