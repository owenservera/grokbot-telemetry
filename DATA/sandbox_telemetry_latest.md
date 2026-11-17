# sandbox_telemetry_parse — 2026-11-18 00:47:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=609170 lines=1353
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1346 |
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
| `chromeBrowserPssKb` | {'int': 1346} |
| `chromeGpuPssKb` | {'int': 1346} |
| `chromeOtherPssKb` | {'int': 1346} |
| `chromeProcesses` | {'int': 1346} |
| `chromeProfiles` | {'int': 1346} |
| `chromeRendererMaxPssKb` | {'int': 1346} |
| `chromeRendererPssKb` | {'int': 1346} |
| `chromeRenderers` | {'int': 1346} |
| `chromeTabs` | {'int': 1346} |
| `chromeTabsProbedProfiles` | {'int': 1346} |
| `chromeUtilityPssKb` | {'int': 1346} |
| `desktopPssKb` | {'int': 1346} |
| `hostPssKb` | {'int': 1346} |
| `kind` | {'str': 1346} |
| `memAvailableKb` | {'int': 1346} |
| `memTotalKb` | {'int': 1346} |
| `otherPssKb` | {'int': 1346} |
| `processes` | {'int': 1346} |
| `pssFallbackProcesses` | {'int': 1346} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
