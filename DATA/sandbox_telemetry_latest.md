# sandbox_telemetry_parse — 2026-11-11 00:03:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1389762 lines=3079
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3070 |
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
| `chromeBrowserPssKb` | {'int': 3070} |
| `chromeGpuPssKb` | {'int': 3070} |
| `chromeOtherPssKb` | {'int': 3070} |
| `chromeProcesses` | {'int': 3070} |
| `chromeProfiles` | {'int': 3070} |
| `chromeRendererMaxPssKb` | {'int': 3070} |
| `chromeRendererPssKb` | {'int': 3070} |
| `chromeRenderers` | {'int': 3070} |
| `chromeTabs` | {'int': 3070} |
| `chromeTabsProbedProfiles` | {'int': 3070} |
| `chromeUtilityPssKb` | {'int': 3070} |
| `desktopPssKb` | {'int': 3070} |
| `hostPssKb` | {'int': 3070} |
| `kind` | {'str': 3070} |
| `memAvailableKb` | {'int': 3070} |
| `memTotalKb` | {'int': 3070} |
| `otherPssKb` | {'int': 3070} |
| `processes` | {'int': 3070} |
| `pssFallbackProcesses` | {'int': 3070} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
