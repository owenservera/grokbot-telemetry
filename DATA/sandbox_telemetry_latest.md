# sandbox_telemetry_parse — 2026-11-20 01:43:04 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1526762 lines=3385
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3374 |
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
| `chromeBrowserPssKb` | {'int': 3374} |
| `chromeGpuPssKb` | {'int': 3374} |
| `chromeOtherPssKb` | {'int': 3374} |
| `chromeProcesses` | {'int': 3374} |
| `chromeProfiles` | {'int': 3374} |
| `chromeRendererMaxPssKb` | {'int': 3374} |
| `chromeRendererPssKb` | {'int': 3374} |
| `chromeRenderers` | {'int': 3374} |
| `chromeTabs` | {'int': 3374} |
| `chromeTabsProbedProfiles` | {'int': 3374} |
| `chromeUtilityPssKb` | {'int': 3374} |
| `desktopPssKb` | {'int': 3374} |
| `hostPssKb` | {'int': 3374} |
| `kind` | {'str': 3374} |
| `memAvailableKb` | {'int': 3374} |
| `memTotalKb` | {'int': 3374} |
| `otherPssKb` | {'int': 3374} |
| `processes` | {'int': 3374} |
| `pssFallbackProcesses` | {'int': 3374} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
