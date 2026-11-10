# sandbox_telemetry_parse — 2026-11-10 17:11:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1234957 lines=2737
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2728 |
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
| `chromeBrowserPssKb` | {'int': 2728} |
| `chromeGpuPssKb` | {'int': 2728} |
| `chromeOtherPssKb` | {'int': 2728} |
| `chromeProcesses` | {'int': 2728} |
| `chromeProfiles` | {'int': 2728} |
| `chromeRendererMaxPssKb` | {'int': 2728} |
| `chromeRendererPssKb` | {'int': 2728} |
| `chromeRenderers` | {'int': 2728} |
| `chromeTabs` | {'int': 2728} |
| `chromeTabsProbedProfiles` | {'int': 2728} |
| `chromeUtilityPssKb` | {'int': 2728} |
| `desktopPssKb` | {'int': 2728} |
| `hostPssKb` | {'int': 2728} |
| `kind` | {'str': 2728} |
| `memAvailableKb` | {'int': 2728} |
| `memTotalKb` | {'int': 2728} |
| `otherPssKb` | {'int': 2728} |
| `processes` | {'int': 2728} |
| `pssFallbackProcesses` | {'int': 2728} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
