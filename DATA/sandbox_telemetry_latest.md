# sandbox_telemetry_parse — 2026-11-25 13:30:51 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2776431 lines=6151
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6136 |
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
| `chromeBrowserPssKb` | {'int': 6136} |
| `chromeGpuPssKb` | {'int': 6136} |
| `chromeOtherPssKb` | {'int': 6136} |
| `chromeProcesses` | {'int': 6136} |
| `chromeProfiles` | {'int': 6136} |
| `chromeRendererMaxPssKb` | {'int': 6136} |
| `chromeRendererPssKb` | {'int': 6136} |
| `chromeRenderers` | {'int': 6136} |
| `chromeTabs` | {'int': 6136} |
| `chromeTabsProbedProfiles` | {'int': 6136} |
| `chromeUtilityPssKb` | {'int': 6136} |
| `desktopPssKb` | {'int': 6136} |
| `hostPssKb` | {'int': 6136} |
| `kind` | {'str': 6136} |
| `memAvailableKb` | {'int': 6136} |
| `memTotalKb` | {'int': 6136} |
| `otherPssKb` | {'int': 6136} |
| `processes` | {'int': 6136} |
| `pssFallbackProcesses` | {'int': 6136} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
