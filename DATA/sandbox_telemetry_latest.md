# sandbox_telemetry_parse — 2026-10-15 04:13:25 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=659386 lines=1463
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1458 |
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
| `chromeBrowserPssKb` | {'int': 1458} |
| `chromeGpuPssKb` | {'int': 1458} |
| `chromeOtherPssKb` | {'int': 1458} |
| `chromeProcesses` | {'int': 1458} |
| `chromeProfiles` | {'int': 1458} |
| `chromeRendererMaxPssKb` | {'int': 1458} |
| `chromeRendererPssKb` | {'int': 1458} |
| `chromeRenderers` | {'int': 1458} |
| `chromeTabs` | {'int': 1458} |
| `chromeTabsProbedProfiles` | {'int': 1458} |
| `chromeUtilityPssKb` | {'int': 1458} |
| `desktopPssKb` | {'int': 1458} |
| `hostPssKb` | {'int': 1458} |
| `kind` | {'str': 1458} |
| `memAvailableKb` | {'int': 1458} |
| `memTotalKb` | {'int': 1458} |
| `otherPssKb` | {'int': 1458} |
| `processes` | {'int': 1458} |
| `pssFallbackProcesses` | {'int': 1458} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
