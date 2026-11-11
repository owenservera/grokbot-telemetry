# sandbox_telemetry_parse — 2026-11-11 06:55:18 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1514108 lines=3354
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3345 |
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
| `chromeBrowserPssKb` | {'int': 3345} |
| `chromeGpuPssKb` | {'int': 3345} |
| `chromeOtherPssKb` | {'int': 3345} |
| `chromeProcesses` | {'int': 3345} |
| `chromeProfiles` | {'int': 3345} |
| `chromeRendererMaxPssKb` | {'int': 3345} |
| `chromeRendererPssKb` | {'int': 3345} |
| `chromeRenderers` | {'int': 3345} |
| `chromeTabs` | {'int': 3345} |
| `chromeTabsProbedProfiles` | {'int': 3345} |
| `chromeUtilityPssKb` | {'int': 3345} |
| `desktopPssKb` | {'int': 3345} |
| `hostPssKb` | {'int': 3345} |
| `kind` | {'str': 3345} |
| `memAvailableKb` | {'int': 3345} |
| `memTotalKb` | {'int': 3345} |
| `otherPssKb` | {'int': 3345} |
| `processes` | {'int': 3345} |
| `pssFallbackProcesses` | {'int': 3345} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
