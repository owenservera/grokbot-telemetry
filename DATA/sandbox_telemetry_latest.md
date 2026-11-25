# sandbox_telemetry_parse — 2026-11-25 13:25:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2773713 lines=6145
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6130 |
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
| `chromeBrowserPssKb` | {'int': 6130} |
| `chromeGpuPssKb` | {'int': 6130} |
| `chromeOtherPssKb` | {'int': 6130} |
| `chromeProcesses` | {'int': 6130} |
| `chromeProfiles` | {'int': 6130} |
| `chromeRendererMaxPssKb` | {'int': 6130} |
| `chromeRendererPssKb` | {'int': 6130} |
| `chromeRenderers` | {'int': 6130} |
| `chromeTabs` | {'int': 6130} |
| `chromeTabsProbedProfiles` | {'int': 6130} |
| `chromeUtilityPssKb` | {'int': 6130} |
| `desktopPssKb` | {'int': 6130} |
| `hostPssKb` | {'int': 6130} |
| `kind` | {'str': 6130} |
| `memAvailableKb` | {'int': 6130} |
| `memTotalKb` | {'int': 6130} |
| `otherPssKb` | {'int': 6130} |
| `processes` | {'int': 6130} |
| `pssFallbackProcesses` | {'int': 6130} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
