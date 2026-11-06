# sandbox_telemetry_parse — 2026-11-06 21:13:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=170824 lines=385
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 376 |
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
| `chromeBrowserPssKb` | {'int': 376} |
| `chromeGpuPssKb` | {'int': 376} |
| `chromeOtherPssKb` | {'int': 376} |
| `chromeProcesses` | {'int': 376} |
| `chromeProfiles` | {'int': 376} |
| `chromeRendererMaxPssKb` | {'int': 376} |
| `chromeRendererPssKb` | {'int': 376} |
| `chromeRenderers` | {'int': 376} |
| `chromeTabs` | {'int': 376} |
| `chromeTabsProbedProfiles` | {'int': 376} |
| `chromeUtilityPssKb` | {'int': 376} |
| `desktopPssKb` | {'int': 376} |
| `hostPssKb` | {'int': 376} |
| `kind` | {'str': 376} |
| `memAvailableKb` | {'int': 376} |
| `memTotalKb` | {'int': 376} |
| `otherPssKb` | {'int': 376} |
| `processes` | {'int': 376} |
| `pssFallbackProcesses` | {'int': 376} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
