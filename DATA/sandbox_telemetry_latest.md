# sandbox_telemetry_parse — 2026-11-24 02:04:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2085289 lines=4623
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4608 |
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
| `chromeBrowserPssKb` | {'int': 4608} |
| `chromeGpuPssKb` | {'int': 4608} |
| `chromeOtherPssKb` | {'int': 4608} |
| `chromeProcesses` | {'int': 4608} |
| `chromeProfiles` | {'int': 4608} |
| `chromeRendererMaxPssKb` | {'int': 4608} |
| `chromeRendererPssKb` | {'int': 4608} |
| `chromeRenderers` | {'int': 4608} |
| `chromeTabs` | {'int': 4608} |
| `chromeTabsProbedProfiles` | {'int': 4608} |
| `chromeUtilityPssKb` | {'int': 4608} |
| `desktopPssKb` | {'int': 4608} |
| `hostPssKb` | {'int': 4608} |
| `kind` | {'str': 4608} |
| `memAvailableKb` | {'int': 4608} |
| `memTotalKb` | {'int': 4608} |
| `otherPssKb` | {'int': 4608} |
| `processes` | {'int': 4608} |
| `pssFallbackProcesses` | {'int': 4608} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
