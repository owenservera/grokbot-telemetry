# sandbox_telemetry_parse — 2026-11-20 12:25:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1712567 lines=3796
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3785 |
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
| `chromeBrowserPssKb` | {'int': 3785} |
| `chromeGpuPssKb` | {'int': 3785} |
| `chromeOtherPssKb` | {'int': 3785} |
| `chromeProcesses` | {'int': 3785} |
| `chromeProfiles` | {'int': 3785} |
| `chromeRendererMaxPssKb` | {'int': 3785} |
| `chromeRendererPssKb` | {'int': 3785} |
| `chromeRenderers` | {'int': 3785} |
| `chromeTabs` | {'int': 3785} |
| `chromeTabsProbedProfiles` | {'int': 3785} |
| `chromeUtilityPssKb` | {'int': 3785} |
| `desktopPssKb` | {'int': 3785} |
| `hostPssKb` | {'int': 3785} |
| `kind` | {'str': 3785} |
| `memAvailableKb` | {'int': 3785} |
| `memTotalKb` | {'int': 3785} |
| `otherPssKb` | {'int': 3785} |
| `processes` | {'int': 3785} |
| `pssFallbackProcesses` | {'int': 3785} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
