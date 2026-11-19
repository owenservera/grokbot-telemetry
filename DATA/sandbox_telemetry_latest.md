# sandbox_telemetry_parse — 2026-11-19 15:22:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1329795 lines=2948
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2939 |
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
| `chromeBrowserPssKb` | {'int': 2939} |
| `chromeGpuPssKb` | {'int': 2939} |
| `chromeOtherPssKb` | {'int': 2939} |
| `chromeProcesses` | {'int': 2939} |
| `chromeProfiles` | {'int': 2939} |
| `chromeRendererMaxPssKb` | {'int': 2939} |
| `chromeRendererPssKb` | {'int': 2939} |
| `chromeRenderers` | {'int': 2939} |
| `chromeTabs` | {'int': 2939} |
| `chromeTabsProbedProfiles` | {'int': 2939} |
| `chromeUtilityPssKb` | {'int': 2939} |
| `desktopPssKb` | {'int': 2939} |
| `hostPssKb` | {'int': 2939} |
| `kind` | {'str': 2939} |
| `memAvailableKb` | {'int': 2939} |
| `memTotalKb` | {'int': 2939} |
| `otherPssKb` | {'int': 2939} |
| `processes` | {'int': 2939} |
| `pssFallbackProcesses` | {'int': 2939} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
