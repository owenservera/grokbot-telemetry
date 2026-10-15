# sandbox_telemetry_parse — 2026-10-15 06:00:43 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=700518 lines=1554
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1549 |
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
| `chromeBrowserPssKb` | {'int': 1549} |
| `chromeGpuPssKb` | {'int': 1549} |
| `chromeOtherPssKb` | {'int': 1549} |
| `chromeProcesses` | {'int': 1549} |
| `chromeProfiles` | {'int': 1549} |
| `chromeRendererMaxPssKb` | {'int': 1549} |
| `chromeRendererPssKb` | {'int': 1549} |
| `chromeRenderers` | {'int': 1549} |
| `chromeTabs` | {'int': 1549} |
| `chromeTabsProbedProfiles` | {'int': 1549} |
| `chromeUtilityPssKb` | {'int': 1549} |
| `desktopPssKb` | {'int': 1549} |
| `hostPssKb` | {'int': 1549} |
| `kind` | {'str': 1549} |
| `memAvailableKb` | {'int': 1549} |
| `memTotalKb` | {'int': 1549} |
| `otherPssKb` | {'int': 1549} |
| `processes` | {'int': 1549} |
| `pssFallbackProcesses` | {'int': 1549} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
