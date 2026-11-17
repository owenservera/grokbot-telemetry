# sandbox_telemetry_parse — 2026-11-17 21:45:38 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=554016 lines=1231
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1224 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 1224} |
| `chromeGpuPssKb` | {'int': 1224} |
| `chromeOtherPssKb` | {'int': 1224} |
| `chromeProcesses` | {'int': 1224} |
| `chromeProfiles` | {'int': 1224} |
| `chromeRendererMaxPssKb` | {'int': 1224} |
| `chromeRendererPssKb` | {'int': 1224} |
| `chromeRenderers` | {'int': 1224} |
| `chromeTabs` | {'int': 1224} |
| `chromeTabsProbedProfiles` | {'int': 1224} |
| `chromeUtilityPssKb` | {'int': 1224} |
| `desktopPssKb` | {'int': 1224} |
| `hostPssKb` | {'int': 1224} |
| `kind` | {'str': 1224} |
| `memAvailableKb` | {'int': 1224} |
| `memTotalKb` | {'int': 1224} |
| `otherPssKb` | {'int': 1224} |
| `processes` | {'int': 1224} |
| `pssFallbackProcesses` | {'int': 1224} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
