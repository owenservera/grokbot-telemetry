# sandbox_telemetry_parse — 2026-10-27 05:38:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=349900 lines=777
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 772 |
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
| `chromeBrowserPssKb` | {'int': 772} |
| `chromeGpuPssKb` | {'int': 772} |
| `chromeOtherPssKb` | {'int': 772} |
| `chromeProcesses` | {'int': 772} |
| `chromeProfiles` | {'int': 772} |
| `chromeRendererMaxPssKb` | {'int': 772} |
| `chromeRendererPssKb` | {'int': 772} |
| `chromeRenderers` | {'int': 772} |
| `chromeTabs` | {'int': 772} |
| `chromeTabsProbedProfiles` | {'int': 772} |
| `chromeUtilityPssKb` | {'int': 772} |
| `desktopPssKb` | {'int': 772} |
| `hostPssKb` | {'int': 772} |
| `kind` | {'str': 772} |
| `memAvailableKb` | {'int': 772} |
| `memTotalKb` | {'int': 772} |
| `otherPssKb` | {'int': 772} |
| `processes` | {'int': 772} |
| `pssFallbackProcesses` | {'int': 772} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
