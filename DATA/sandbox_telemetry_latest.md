# sandbox_telemetry_parse — 2026-11-07 05:47:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=331361 lines=740
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 731 |
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
| `chromeBrowserPssKb` | {'int': 731} |
| `chromeGpuPssKb` | {'int': 731} |
| `chromeOtherPssKb` | {'int': 731} |
| `chromeProcesses` | {'int': 731} |
| `chromeProfiles` | {'int': 731} |
| `chromeRendererMaxPssKb` | {'int': 731} |
| `chromeRendererPssKb` | {'int': 731} |
| `chromeRenderers` | {'int': 731} |
| `chromeTabs` | {'int': 731} |
| `chromeTabsProbedProfiles` | {'int': 731} |
| `chromeUtilityPssKb` | {'int': 731} |
| `desktopPssKb` | {'int': 731} |
| `hostPssKb` | {'int': 731} |
| `kind` | {'str': 731} |
| `memAvailableKb` | {'int': 731} |
| `memTotalKb` | {'int': 731} |
| `otherPssKb` | {'int': 731} |
| `processes` | {'int': 731} |
| `pssFallbackProcesses` | {'int': 731} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
