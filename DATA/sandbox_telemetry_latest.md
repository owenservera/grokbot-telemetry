# sandbox_telemetry_parse — 2026-11-16 18:55:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=84682 lines=193
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 186 |
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
| `chromeBrowserPssKb` | {'int': 186} |
| `chromeGpuPssKb` | {'int': 186} |
| `chromeOtherPssKb` | {'int': 186} |
| `chromeProcesses` | {'int': 186} |
| `chromeProfiles` | {'int': 186} |
| `chromeRendererMaxPssKb` | {'int': 186} |
| `chromeRendererPssKb` | {'int': 186} |
| `chromeRenderers` | {'int': 186} |
| `chromeTabs` | {'int': 186} |
| `chromeTabsProbedProfiles` | {'int': 186} |
| `chromeUtilityPssKb` | {'int': 186} |
| `desktopPssKb` | {'int': 186} |
| `hostPssKb` | {'int': 186} |
| `kind` | {'str': 186} |
| `memAvailableKb` | {'int': 186} |
| `memTotalKb` | {'int': 186} |
| `otherPssKb` | {'int': 186} |
| `processes` | {'int': 186} |
| `pssFallbackProcesses` | {'int': 186} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
