# sandbox_telemetry_parse — 2026-11-11 14:31:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1672920 lines=3705
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3696 |
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
| `chromeBrowserPssKb` | {'int': 3696} |
| `chromeGpuPssKb` | {'int': 3696} |
| `chromeOtherPssKb` | {'int': 3696} |
| `chromeProcesses` | {'int': 3696} |
| `chromeProfiles` | {'int': 3696} |
| `chromeRendererMaxPssKb` | {'int': 3696} |
| `chromeRendererPssKb` | {'int': 3696} |
| `chromeRenderers` | {'int': 3696} |
| `chromeTabs` | {'int': 3696} |
| `chromeTabsProbedProfiles` | {'int': 3696} |
| `chromeUtilityPssKb` | {'int': 3696} |
| `desktopPssKb` | {'int': 3696} |
| `hostPssKb` | {'int': 3696} |
| `kind` | {'str': 3696} |
| `memAvailableKb` | {'int': 3696} |
| `memTotalKb` | {'int': 3696} |
| `otherPssKb` | {'int': 3696} |
| `processes` | {'int': 3696} |
| `pssFallbackProcesses` | {'int': 3696} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
