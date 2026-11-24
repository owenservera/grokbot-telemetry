# sandbox_telemetry_parse — 2026-11-24 19:31:34 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2419602 lines=5362
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5347 |
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
| `chromeBrowserPssKb` | {'int': 5347} |
| `chromeGpuPssKb` | {'int': 5347} |
| `chromeOtherPssKb` | {'int': 5347} |
| `chromeProcesses` | {'int': 5347} |
| `chromeProfiles` | {'int': 5347} |
| `chromeRendererMaxPssKb` | {'int': 5347} |
| `chromeRendererPssKb` | {'int': 5347} |
| `chromeRenderers` | {'int': 5347} |
| `chromeTabs` | {'int': 5347} |
| `chromeTabsProbedProfiles` | {'int': 5347} |
| `chromeUtilityPssKb` | {'int': 5347} |
| `desktopPssKb` | {'int': 5347} |
| `hostPssKb` | {'int': 5347} |
| `kind` | {'str': 5347} |
| `memAvailableKb` | {'int': 5347} |
| `memTotalKb` | {'int': 5347} |
| `otherPssKb` | {'int': 5347} |
| `processes` | {'int': 5347} |
| `pssFallbackProcesses` | {'int': 5347} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
