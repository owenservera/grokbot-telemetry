# sandbox_telemetry_parse — 2026-11-27 22:29:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=618633 lines=1374
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1366 |
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
| `chromeBrowserPssKb` | {'int': 1366} |
| `chromeGpuPssKb` | {'int': 1366} |
| `chromeOtherPssKb` | {'int': 1366} |
| `chromeProcesses` | {'int': 1366} |
| `chromeProfiles` | {'int': 1366} |
| `chromeRendererMaxPssKb` | {'int': 1366} |
| `chromeRendererPssKb` | {'int': 1366} |
| `chromeRenderers` | {'int': 1366} |
| `chromeTabs` | {'int': 1366} |
| `chromeTabsProbedProfiles` | {'int': 1366} |
| `chromeUtilityPssKb` | {'int': 1366} |
| `desktopPssKb` | {'int': 1366} |
| `hostPssKb` | {'int': 1366} |
| `kind` | {'str': 1366} |
| `memAvailableKb` | {'int': 1366} |
| `memTotalKb` | {'int': 1366} |
| `otherPssKb` | {'int': 1366} |
| `processes` | {'int': 1366} |
| `pssFallbackProcesses` | {'int': 1366} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
