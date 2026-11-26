# sandbox_telemetry_parse — 2026-11-27 00:29:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=154866 lines=349
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 341 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

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
| `chromeBrowserPssKb` | {'int': 341} |
| `chromeGpuPssKb` | {'int': 341} |
| `chromeOtherPssKb` | {'int': 341} |
| `chromeProcesses` | {'int': 341} |
| `chromeProfiles` | {'int': 341} |
| `chromeRendererMaxPssKb` | {'int': 341} |
| `chromeRendererPssKb` | {'int': 341} |
| `chromeRenderers` | {'int': 341} |
| `chromeTabs` | {'int': 341} |
| `chromeTabsProbedProfiles` | {'int': 341} |
| `chromeUtilityPssKb` | {'int': 341} |
| `desktopPssKb` | {'int': 341} |
| `hostPssKb` | {'int': 341} |
| `kind` | {'str': 341} |
| `memAvailableKb` | {'int': 341} |
| `memTotalKb` | {'int': 341} |
| `otherPssKb` | {'int': 341} |
| `processes` | {'int': 341} |
| `pssFallbackProcesses` | {'int': 341} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
