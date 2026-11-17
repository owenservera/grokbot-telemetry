# sandbox_telemetry_parse — 2026-11-18 00:01:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=593350 lines=1318
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1311 |
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
| `chromeBrowserPssKb` | {'int': 1311} |
| `chromeGpuPssKb` | {'int': 1311} |
| `chromeOtherPssKb` | {'int': 1311} |
| `chromeProcesses` | {'int': 1311} |
| `chromeProfiles` | {'int': 1311} |
| `chromeRendererMaxPssKb` | {'int': 1311} |
| `chromeRendererPssKb` | {'int': 1311} |
| `chromeRenderers` | {'int': 1311} |
| `chromeTabs` | {'int': 1311} |
| `chromeTabsProbedProfiles` | {'int': 1311} |
| `chromeUtilityPssKb` | {'int': 1311} |
| `desktopPssKb` | {'int': 1311} |
| `hostPssKb` | {'int': 1311} |
| `kind` | {'str': 1311} |
| `memAvailableKb` | {'int': 1311} |
| `memTotalKb` | {'int': 1311} |
| `otherPssKb` | {'int': 1311} |
| `processes` | {'int': 1311} |
| `pssFallbackProcesses` | {'int': 1311} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
