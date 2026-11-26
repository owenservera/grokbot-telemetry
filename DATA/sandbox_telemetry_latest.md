# sandbox_telemetry_parse — 2026-11-26 20:20:26 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=70283 lines=162
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 154 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

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
| `chromeBrowserPssKb` | {'int': 154} |
| `chromeGpuPssKb` | {'int': 154} |
| `chromeOtherPssKb` | {'int': 154} |
| `chromeProcesses` | {'int': 154} |
| `chromeProfiles` | {'int': 154} |
| `chromeRendererMaxPssKb` | {'int': 154} |
| `chromeRendererPssKb` | {'int': 154} |
| `chromeRenderers` | {'int': 154} |
| `chromeTabs` | {'int': 154} |
| `chromeTabsProbedProfiles` | {'int': 154} |
| `chromeUtilityPssKb` | {'int': 154} |
| `desktopPssKb` | {'int': 154} |
| `hostPssKb` | {'int': 154} |
| `kind` | {'str': 154} |
| `memAvailableKb` | {'int': 154} |
| `memTotalKb` | {'int': 154} |
| `otherPssKb` | {'int': 154} |
| `processes` | {'int': 154} |
| `pssFallbackProcesses` | {'int': 154} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
