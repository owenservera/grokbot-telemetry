# sandbox_telemetry_parse — 2026-11-11 02:59:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1443124 lines=3197
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3188 |
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
| `chromeBrowserPssKb` | {'int': 3188} |
| `chromeGpuPssKb` | {'int': 3188} |
| `chromeOtherPssKb` | {'int': 3188} |
| `chromeProcesses` | {'int': 3188} |
| `chromeProfiles` | {'int': 3188} |
| `chromeRendererMaxPssKb` | {'int': 3188} |
| `chromeRendererPssKb` | {'int': 3188} |
| `chromeRenderers` | {'int': 3188} |
| `chromeTabs` | {'int': 3188} |
| `chromeTabsProbedProfiles` | {'int': 3188} |
| `chromeUtilityPssKb` | {'int': 3188} |
| `desktopPssKb` | {'int': 3188} |
| `hostPssKb` | {'int': 3188} |
| `kind` | {'str': 3188} |
| `memAvailableKb` | {'int': 3188} |
| `memTotalKb` | {'int': 3188} |
| `otherPssKb` | {'int': 3188} |
| `processes` | {'int': 3188} |
| `pssFallbackProcesses` | {'int': 3188} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
