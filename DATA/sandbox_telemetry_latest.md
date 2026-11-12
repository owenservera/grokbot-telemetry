# sandbox_telemetry_parse — 2026-11-12 04:13:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1963973 lines=4348
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4339 |
| `egress_tunnel` | 5 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 4339} |
| `chromeGpuPssKb` | {'int': 4339} |
| `chromeOtherPssKb` | {'int': 4339} |
| `chromeProcesses` | {'int': 4339} |
| `chromeProfiles` | {'int': 4339} |
| `chromeRendererMaxPssKb` | {'int': 4339} |
| `chromeRendererPssKb` | {'int': 4339} |
| `chromeRenderers` | {'int': 4339} |
| `chromeTabs` | {'int': 4339} |
| `chromeTabsProbedProfiles` | {'int': 4339} |
| `chromeUtilityPssKb` | {'int': 4339} |
| `desktopPssKb` | {'int': 4339} |
| `hostPssKb` | {'int': 4339} |
| `kind` | {'str': 4339} |
| `memAvailableKb` | {'int': 4339} |
| `memTotalKb` | {'int': 4339} |
| `otherPssKb` | {'int': 4339} |
| `processes` | {'int': 4339} |
| `pssFallbackProcesses` | {'int': 4339} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
