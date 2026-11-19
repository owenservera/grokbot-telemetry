# sandbox_telemetry_parse — 2026-11-19 17:20:04 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1368890 lines=3036
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3025 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3025} |
| `chromeGpuPssKb` | {'int': 3025} |
| `chromeOtherPssKb` | {'int': 3025} |
| `chromeProcesses` | {'int': 3025} |
| `chromeProfiles` | {'int': 3025} |
| `chromeRendererMaxPssKb` | {'int': 3025} |
| `chromeRendererPssKb` | {'int': 3025} |
| `chromeRenderers` | {'int': 3025} |
| `chromeTabs` | {'int': 3025} |
| `chromeTabsProbedProfiles` | {'int': 3025} |
| `chromeUtilityPssKb` | {'int': 3025} |
| `desktopPssKb` | {'int': 3025} |
| `hostPssKb` | {'int': 3025} |
| `kind` | {'str': 3025} |
| `memAvailableKb` | {'int': 3025} |
| `memTotalKb` | {'int': 3025} |
| `otherPssKb` | {'int': 3025} |
| `processes` | {'int': 3025} |
| `pssFallbackProcesses` | {'int': 3025} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
