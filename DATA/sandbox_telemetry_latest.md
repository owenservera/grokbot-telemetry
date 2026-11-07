# sandbox_telemetry_parse — 2026-11-07 02:18:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=268515 lines=601
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 592 |
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
| `chromeBrowserPssKb` | {'int': 592} |
| `chromeGpuPssKb` | {'int': 592} |
| `chromeOtherPssKb` | {'int': 592} |
| `chromeProcesses` | {'int': 592} |
| `chromeProfiles` | {'int': 592} |
| `chromeRendererMaxPssKb` | {'int': 592} |
| `chromeRendererPssKb` | {'int': 592} |
| `chromeRenderers` | {'int': 592} |
| `chromeTabs` | {'int': 592} |
| `chromeTabsProbedProfiles` | {'int': 592} |
| `chromeUtilityPssKb` | {'int': 592} |
| `desktopPssKb` | {'int': 592} |
| `hostPssKb` | {'int': 592} |
| `kind` | {'str': 592} |
| `memAvailableKb` | {'int': 592} |
| `memTotalKb` | {'int': 592} |
| `otherPssKb` | {'int': 592} |
| `processes` | {'int': 592} |
| `pssFallbackProcesses` | {'int': 592} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
