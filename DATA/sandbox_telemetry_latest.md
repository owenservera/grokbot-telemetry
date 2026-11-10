# sandbox_telemetry_parse — 2026-11-10 17:15:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1236316 lines=2740
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2731 |
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
| `chromeBrowserPssKb` | {'int': 2731} |
| `chromeGpuPssKb` | {'int': 2731} |
| `chromeOtherPssKb` | {'int': 2731} |
| `chromeProcesses` | {'int': 2731} |
| `chromeProfiles` | {'int': 2731} |
| `chromeRendererMaxPssKb` | {'int': 2731} |
| `chromeRendererPssKb` | {'int': 2731} |
| `chromeRenderers` | {'int': 2731} |
| `chromeTabs` | {'int': 2731} |
| `chromeTabsProbedProfiles` | {'int': 2731} |
| `chromeUtilityPssKb` | {'int': 2731} |
| `desktopPssKb` | {'int': 2731} |
| `hostPssKb` | {'int': 2731} |
| `kind` | {'str': 2731} |
| `memAvailableKb` | {'int': 2731} |
| `memTotalKb` | {'int': 2731} |
| `otherPssKb` | {'int': 2731} |
| `processes` | {'int': 2731} |
| `pssFallbackProcesses` | {'int': 2731} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
