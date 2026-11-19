# sandbox_telemetry_parse — 2026-11-19 21:04:33 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1441759 lines=3197
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3186 |
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
| `chromeBrowserPssKb` | {'int': 3186} |
| `chromeGpuPssKb` | {'int': 3186} |
| `chromeOtherPssKb` | {'int': 3186} |
| `chromeProcesses` | {'int': 3186} |
| `chromeProfiles` | {'int': 3186} |
| `chromeRendererMaxPssKb` | {'int': 3186} |
| `chromeRendererPssKb` | {'int': 3186} |
| `chromeRenderers` | {'int': 3186} |
| `chromeTabs` | {'int': 3186} |
| `chromeTabsProbedProfiles` | {'int': 3186} |
| `chromeUtilityPssKb` | {'int': 3186} |
| `desktopPssKb` | {'int': 3186} |
| `hostPssKb` | {'int': 3186} |
| `kind` | {'str': 3186} |
| `memAvailableKb` | {'int': 3186} |
| `memTotalKb` | {'int': 3186} |
| `otherPssKb` | {'int': 3186} |
| `processes` | {'int': 3186} |
| `pssFallbackProcesses` | {'int': 3186} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
