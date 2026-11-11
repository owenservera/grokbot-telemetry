# sandbox_telemetry_parse — 2026-11-11 02:12:26 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1430016 lines=3168
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3159 |
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
| `chromeBrowserPssKb` | {'int': 3159} |
| `chromeGpuPssKb` | {'int': 3159} |
| `chromeOtherPssKb` | {'int': 3159} |
| `chromeProcesses` | {'int': 3159} |
| `chromeProfiles` | {'int': 3159} |
| `chromeRendererMaxPssKb` | {'int': 3159} |
| `chromeRendererPssKb` | {'int': 3159} |
| `chromeRenderers` | {'int': 3159} |
| `chromeTabs` | {'int': 3159} |
| `chromeTabsProbedProfiles` | {'int': 3159} |
| `chromeUtilityPssKb` | {'int': 3159} |
| `desktopPssKb` | {'int': 3159} |
| `hostPssKb` | {'int': 3159} |
| `kind` | {'str': 3159} |
| `memAvailableKb` | {'int': 3159} |
| `memTotalKb` | {'int': 3159} |
| `otherPssKb` | {'int': 3159} |
| `processes` | {'int': 3159} |
| `pssFallbackProcesses` | {'int': 3159} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
