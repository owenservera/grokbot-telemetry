# sandbox_telemetry_parse — 2026-11-27 21:53:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=606418 lines=1347
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1339 |
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
| `chromeBrowserPssKb` | {'int': 1339} |
| `chromeGpuPssKb` | {'int': 1339} |
| `chromeOtherPssKb` | {'int': 1339} |
| `chromeProcesses` | {'int': 1339} |
| `chromeProfiles` | {'int': 1339} |
| `chromeRendererMaxPssKb` | {'int': 1339} |
| `chromeRendererPssKb` | {'int': 1339} |
| `chromeRenderers` | {'int': 1339} |
| `chromeTabs` | {'int': 1339} |
| `chromeTabsProbedProfiles` | {'int': 1339} |
| `chromeUtilityPssKb` | {'int': 1339} |
| `desktopPssKb` | {'int': 1339} |
| `hostPssKb` | {'int': 1339} |
| `kind` | {'str': 1339} |
| `memAvailableKb` | {'int': 1339} |
| `memTotalKb` | {'int': 1339} |
| `otherPssKb` | {'int': 1339} |
| `processes` | {'int': 1339} |
| `pssFallbackProcesses` | {'int': 1339} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
