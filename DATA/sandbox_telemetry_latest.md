# sandbox_telemetry_parse — 2026-11-26 16:48:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3337478 lines=7393
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7376 |
| `egress_tunnel` | 13 |
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
| `attempt` | {'int': 13} |
| `exitStatus` | {'int': 6} |
| `kind` | {'str': 13} |
| `outcome` | {'str': 13} |
| `runtimeS` | {'int': 6} |

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
| `chromeBrowserPssKb` | {'int': 7376} |
| `chromeGpuPssKb` | {'int': 7376} |
| `chromeOtherPssKb` | {'int': 7376} |
| `chromeProcesses` | {'int': 7376} |
| `chromeProfiles` | {'int': 7376} |
| `chromeRendererMaxPssKb` | {'int': 7376} |
| `chromeRendererPssKb` | {'int': 7376} |
| `chromeRenderers` | {'int': 7376} |
| `chromeTabs` | {'int': 7376} |
| `chromeTabsProbedProfiles` | {'int': 7376} |
| `chromeUtilityPssKb` | {'int': 7376} |
| `desktopPssKb` | {'int': 7376} |
| `hostPssKb` | {'int': 7376} |
| `kind` | {'str': 7376} |
| `memAvailableKb` | {'int': 7376} |
| `memTotalKb` | {'int': 7376} |
| `otherPssKb` | {'int': 7376} |
| `processes` | {'int': 7376} |
| `pssFallbackProcesses` | {'int': 7376} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
