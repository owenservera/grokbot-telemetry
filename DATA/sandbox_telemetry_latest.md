# sandbox_telemetry_parse — 2026-11-07 04:37:26 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=315538 lines=705
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 696 |
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
| `chromeBrowserPssKb` | {'int': 696} |
| `chromeGpuPssKb` | {'int': 696} |
| `chromeOtherPssKb` | {'int': 696} |
| `chromeProcesses` | {'int': 696} |
| `chromeProfiles` | {'int': 696} |
| `chromeRendererMaxPssKb` | {'int': 696} |
| `chromeRendererPssKb` | {'int': 696} |
| `chromeRenderers` | {'int': 696} |
| `chromeTabs` | {'int': 696} |
| `chromeTabsProbedProfiles` | {'int': 696} |
| `chromeUtilityPssKb` | {'int': 696} |
| `desktopPssKb` | {'int': 696} |
| `hostPssKb` | {'int': 696} |
| `kind` | {'str': 696} |
| `memAvailableKb` | {'int': 696} |
| `memTotalKb` | {'int': 696} |
| `otherPssKb` | {'int': 696} |
| `processes` | {'int': 696} |
| `pssFallbackProcesses` | {'int': 696} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
