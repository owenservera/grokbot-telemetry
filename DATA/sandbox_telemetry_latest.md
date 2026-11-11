# sandbox_telemetry_parse — 2026-11-11 07:36:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1528130 lines=3385
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3376 |
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
| `chromeBrowserPssKb` | {'int': 3376} |
| `chromeGpuPssKb` | {'int': 3376} |
| `chromeOtherPssKb` | {'int': 3376} |
| `chromeProcesses` | {'int': 3376} |
| `chromeProfiles` | {'int': 3376} |
| `chromeRendererMaxPssKb` | {'int': 3376} |
| `chromeRendererPssKb` | {'int': 3376} |
| `chromeRenderers` | {'int': 3376} |
| `chromeTabs` | {'int': 3376} |
| `chromeTabsProbedProfiles` | {'int': 3376} |
| `chromeUtilityPssKb` | {'int': 3376} |
| `desktopPssKb` | {'int': 3376} |
| `hostPssKb` | {'int': 3376} |
| `kind` | {'str': 3376} |
| `memAvailableKb` | {'int': 3376} |
| `memTotalKb` | {'int': 3376} |
| `otherPssKb` | {'int': 3376} |
| `processes` | {'int': 3376} |
| `pssFallbackProcesses` | {'int': 3376} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
