# sandbox_telemetry_parse — 2026-11-26 03:26:51 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3050928 lines=6758
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6743 |
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
| `chromeBrowserPssKb` | {'int': 6743} |
| `chromeGpuPssKb` | {'int': 6743} |
| `chromeOtherPssKb` | {'int': 6743} |
| `chromeProcesses` | {'int': 6743} |
| `chromeProfiles` | {'int': 6743} |
| `chromeRendererMaxPssKb` | {'int': 6743} |
| `chromeRendererPssKb` | {'int': 6743} |
| `chromeRenderers` | {'int': 6743} |
| `chromeTabs` | {'int': 6743} |
| `chromeTabsProbedProfiles` | {'int': 6743} |
| `chromeUtilityPssKb` | {'int': 6743} |
| `desktopPssKb` | {'int': 6743} |
| `hostPssKb` | {'int': 6743} |
| `kind` | {'str': 6743} |
| `memAvailableKb` | {'int': 6743} |
| `memTotalKb` | {'int': 6743} |
| `otherPssKb` | {'int': 6743} |
| `processes` | {'int': 6743} |
| `pssFallbackProcesses` | {'int': 6743} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
