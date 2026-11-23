# sandbox_telemetry_parse — 2026-11-23 21:21:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1991192 lines=4415
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4400 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 4400} |
| `chromeGpuPssKb` | {'int': 4400} |
| `chromeOtherPssKb` | {'int': 4400} |
| `chromeProcesses` | {'int': 4400} |
| `chromeProfiles` | {'int': 4400} |
| `chromeRendererMaxPssKb` | {'int': 4400} |
| `chromeRendererPssKb` | {'int': 4400} |
| `chromeRenderers` | {'int': 4400} |
| `chromeTabs` | {'int': 4400} |
| `chromeTabsProbedProfiles` | {'int': 4400} |
| `chromeUtilityPssKb` | {'int': 4400} |
| `desktopPssKb` | {'int': 4400} |
| `hostPssKb` | {'int': 4400} |
| `kind` | {'str': 4400} |
| `memAvailableKb` | {'int': 4400} |
| `memTotalKb` | {'int': 4400} |
| `otherPssKb` | {'int': 4400} |
| `processes` | {'int': 4400} |
| `pssFallbackProcesses` | {'int': 4400} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
