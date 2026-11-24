# sandbox_telemetry_parse — 2026-11-24 07:41:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2190193 lines=4855
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4840 |
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
| `chromeBrowserPssKb` | {'int': 4840} |
| `chromeGpuPssKb` | {'int': 4840} |
| `chromeOtherPssKb` | {'int': 4840} |
| `chromeProcesses` | {'int': 4840} |
| `chromeProfiles` | {'int': 4840} |
| `chromeRendererMaxPssKb` | {'int': 4840} |
| `chromeRendererPssKb` | {'int': 4840} |
| `chromeRenderers` | {'int': 4840} |
| `chromeTabs` | {'int': 4840} |
| `chromeTabsProbedProfiles` | {'int': 4840} |
| `chromeUtilityPssKb` | {'int': 4840} |
| `desktopPssKb` | {'int': 4840} |
| `hostPssKb` | {'int': 4840} |
| `kind` | {'str': 4840} |
| `memAvailableKb` | {'int': 4840} |
| `memTotalKb` | {'int': 4840} |
| `otherPssKb` | {'int': 4840} |
| `processes` | {'int': 4840} |
| `pssFallbackProcesses` | {'int': 4840} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
