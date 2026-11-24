# sandbox_telemetry_parse — 2026-11-24 14:23:57 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2320433 lines=5143
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5128 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 5128} |
| `chromeGpuPssKb` | {'int': 5128} |
| `chromeOtherPssKb` | {'int': 5128} |
| `chromeProcesses` | {'int': 5128} |
| `chromeProfiles` | {'int': 5128} |
| `chromeRendererMaxPssKb` | {'int': 5128} |
| `chromeRendererPssKb` | {'int': 5128} |
| `chromeRenderers` | {'int': 5128} |
| `chromeTabs` | {'int': 5128} |
| `chromeTabsProbedProfiles` | {'int': 5128} |
| `chromeUtilityPssKb` | {'int': 5128} |
| `desktopPssKb` | {'int': 5128} |
| `hostPssKb` | {'int': 5128} |
| `kind` | {'str': 5128} |
| `memAvailableKb` | {'int': 5128} |
| `memTotalKb` | {'int': 5128} |
| `otherPssKb` | {'int': 5128} |
| `processes` | {'int': 5128} |
| `pssFallbackProcesses` | {'int': 5128} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
