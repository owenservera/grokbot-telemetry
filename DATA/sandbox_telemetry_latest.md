# sandbox_telemetry_parse — 2026-11-17 14:41:11 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=425138 lines=946
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 939 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 939} |
| `chromeGpuPssKb` | {'int': 939} |
| `chromeOtherPssKb` | {'int': 939} |
| `chromeProcesses` | {'int': 939} |
| `chromeProfiles` | {'int': 939} |
| `chromeRendererMaxPssKb` | {'int': 939} |
| `chromeRendererPssKb` | {'int': 939} |
| `chromeRenderers` | {'int': 939} |
| `chromeTabs` | {'int': 939} |
| `chromeTabsProbedProfiles` | {'int': 939} |
| `chromeUtilityPssKb` | {'int': 939} |
| `desktopPssKb` | {'int': 939} |
| `hostPssKb` | {'int': 939} |
| `kind` | {'str': 939} |
| `memAvailableKb` | {'int': 939} |
| `memTotalKb` | {'int': 939} |
| `otherPssKb` | {'int': 939} |
| `processes` | {'int': 939} |
| `pssFallbackProcesses` | {'int': 939} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
