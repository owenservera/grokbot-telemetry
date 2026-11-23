# sandbox_telemetry_parse — 2026-11-23 16:13:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1904288 lines=4223
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4208 |
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
| `chromeBrowserPssKb` | {'int': 4208} |
| `chromeGpuPssKb` | {'int': 4208} |
| `chromeOtherPssKb` | {'int': 4208} |
| `chromeProcesses` | {'int': 4208} |
| `chromeProfiles` | {'int': 4208} |
| `chromeRendererMaxPssKb` | {'int': 4208} |
| `chromeRendererPssKb` | {'int': 4208} |
| `chromeRenderers` | {'int': 4208} |
| `chromeTabs` | {'int': 4208} |
| `chromeTabsProbedProfiles` | {'int': 4208} |
| `chromeUtilityPssKb` | {'int': 4208} |
| `desktopPssKb` | {'int': 4208} |
| `hostPssKb` | {'int': 4208} |
| `kind` | {'str': 4208} |
| `memAvailableKb` | {'int': 4208} |
| `memTotalKb` | {'int': 4208} |
| `otherPssKb` | {'int': 4208} |
| `processes` | {'int': 4208} |
| `pssFallbackProcesses` | {'int': 4208} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
