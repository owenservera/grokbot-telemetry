# sandbox_telemetry_parse — 2026-11-19 17:53:37 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1379762 lines=3060
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3049 |
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
| `chromeBrowserPssKb` | {'int': 3049} |
| `chromeGpuPssKb` | {'int': 3049} |
| `chromeOtherPssKb` | {'int': 3049} |
| `chromeProcesses` | {'int': 3049} |
| `chromeProfiles` | {'int': 3049} |
| `chromeRendererMaxPssKb` | {'int': 3049} |
| `chromeRendererPssKb` | {'int': 3049} |
| `chromeRenderers` | {'int': 3049} |
| `chromeTabs` | {'int': 3049} |
| `chromeTabsProbedProfiles` | {'int': 3049} |
| `chromeUtilityPssKb` | {'int': 3049} |
| `desktopPssKb` | {'int': 3049} |
| `hostPssKb` | {'int': 3049} |
| `kind` | {'str': 3049} |
| `memAvailableKb` | {'int': 3049} |
| `memTotalKb` | {'int': 3049} |
| `otherPssKb` | {'int': 3049} |
| `processes` | {'int': 3049} |
| `pssFallbackProcesses` | {'int': 3049} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
