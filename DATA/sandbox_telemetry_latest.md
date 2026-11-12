# sandbox_telemetry_parse — 2026-11-12 13:59:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2159878 lines=4781
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4772 |
| `egress_tunnel` | 5 |
| `boot_stage` | 3 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 4772} |
| `chromeGpuPssKb` | {'int': 4772} |
| `chromeOtherPssKb` | {'int': 4772} |
| `chromeProcesses` | {'int': 4772} |
| `chromeProfiles` | {'int': 4772} |
| `chromeRendererMaxPssKb` | {'int': 4772} |
| `chromeRendererPssKb` | {'int': 4772} |
| `chromeRenderers` | {'int': 4772} |
| `chromeTabs` | {'int': 4772} |
| `chromeTabsProbedProfiles` | {'int': 4772} |
| `chromeUtilityPssKb` | {'int': 4772} |
| `desktopPssKb` | {'int': 4772} |
| `hostPssKb` | {'int': 4772} |
| `kind` | {'str': 4772} |
| `memAvailableKb` | {'int': 4772} |
| `memTotalKb` | {'int': 4772} |
| `otherPssKb` | {'int': 4772} |
| `processes` | {'int': 4772} |
| `pssFallbackProcesses` | {'int': 4772} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
