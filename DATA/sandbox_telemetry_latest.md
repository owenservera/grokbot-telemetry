# sandbox_telemetry_parse — 2026-11-19 23:23:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1484714 lines=3292
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3281 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3281} |
| `chromeGpuPssKb` | {'int': 3281} |
| `chromeOtherPssKb` | {'int': 3281} |
| `chromeProcesses` | {'int': 3281} |
| `chromeProfiles` | {'int': 3281} |
| `chromeRendererMaxPssKb` | {'int': 3281} |
| `chromeRendererPssKb` | {'int': 3281} |
| `chromeRenderers` | {'int': 3281} |
| `chromeTabs` | {'int': 3281} |
| `chromeTabsProbedProfiles` | {'int': 3281} |
| `chromeUtilityPssKb` | {'int': 3281} |
| `desktopPssKb` | {'int': 3281} |
| `hostPssKb` | {'int': 3281} |
| `kind` | {'str': 3281} |
| `memAvailableKb` | {'int': 3281} |
| `memTotalKb` | {'int': 3281} |
| `otherPssKb` | {'int': 3281} |
| `processes` | {'int': 3281} |
| `pssFallbackProcesses` | {'int': 3281} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
