# sandbox_telemetry_parse — 2026-10-07 04:40:30 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=808405 lines=1777
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1772 |
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
| `chromeBrowserPssKb` | {'int': 1772} |
| `chromeGpuPssKb` | {'int': 1772} |
| `chromeOtherPssKb` | {'int': 1772} |
| `chromeProcesses` | {'int': 1772} |
| `chromeProfiles` | {'int': 1772} |
| `chromeRendererMaxPssKb` | {'int': 1772} |
| `chromeRendererPssKb` | {'int': 1772} |
| `chromeRenderers` | {'int': 1772} |
| `chromeTabs` | {'int': 1772} |
| `chromeTabsProbedProfiles` | {'int': 1772} |
| `chromeUtilityPssKb` | {'int': 1772} |
| `desktopPssKb` | {'int': 1772} |
| `hostPssKb` | {'int': 1772} |
| `kind` | {'str': 1772} |
| `memAvailableKb` | {'int': 1772} |
| `memTotalKb` | {'int': 1772} |
| `otherPssKb` | {'int': 1772} |
| `processes` | {'int': 1772} |
| `pssFallbackProcesses` | {'int': 1772} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
