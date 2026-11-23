# sandbox_telemetry_parse — 2026-11-23 17:21:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1923739 lines=4266
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4251 |
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
| `chromeBrowserPssKb` | {'int': 4251} |
| `chromeGpuPssKb` | {'int': 4251} |
| `chromeOtherPssKb` | {'int': 4251} |
| `chromeProcesses` | {'int': 4251} |
| `chromeProfiles` | {'int': 4251} |
| `chromeRendererMaxPssKb` | {'int': 4251} |
| `chromeRendererPssKb` | {'int': 4251} |
| `chromeRenderers` | {'int': 4251} |
| `chromeTabs` | {'int': 4251} |
| `chromeTabsProbedProfiles` | {'int': 4251} |
| `chromeUtilityPssKb` | {'int': 4251} |
| `desktopPssKb` | {'int': 4251} |
| `hostPssKb` | {'int': 4251} |
| `kind` | {'str': 4251} |
| `memAvailableKb` | {'int': 4251} |
| `memTotalKb` | {'int': 4251} |
| `otherPssKb` | {'int': 4251} |
| `processes` | {'int': 4251} |
| `pssFallbackProcesses` | {'int': 4251} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
