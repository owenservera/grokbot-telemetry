# sandbox_telemetry_parse — 2026-11-09 21:30:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=847158 lines=1880
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1871 |
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
| `chromeBrowserPssKb` | {'int': 1871} |
| `chromeGpuPssKb` | {'int': 1871} |
| `chromeOtherPssKb` | {'int': 1871} |
| `chromeProcesses` | {'int': 1871} |
| `chromeProfiles` | {'int': 1871} |
| `chromeRendererMaxPssKb` | {'int': 1871} |
| `chromeRendererPssKb` | {'int': 1871} |
| `chromeRenderers` | {'int': 1871} |
| `chromeTabs` | {'int': 1871} |
| `chromeTabsProbedProfiles` | {'int': 1871} |
| `chromeUtilityPssKb` | {'int': 1871} |
| `desktopPssKb` | {'int': 1871} |
| `hostPssKb` | {'int': 1871} |
| `kind` | {'str': 1871} |
| `memAvailableKb` | {'int': 1871} |
| `memTotalKb` | {'int': 1871} |
| `otherPssKb` | {'int': 1871} |
| `processes` | {'int': 1871} |
| `pssFallbackProcesses` | {'int': 1871} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
