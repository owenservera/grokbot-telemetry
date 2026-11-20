# sandbox_telemetry_parse — 2026-11-20 03:00:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1548458 lines=3433
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3422 |
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
| `chromeBrowserPssKb` | {'int': 3422} |
| `chromeGpuPssKb` | {'int': 3422} |
| `chromeOtherPssKb` | {'int': 3422} |
| `chromeProcesses` | {'int': 3422} |
| `chromeProfiles` | {'int': 3422} |
| `chromeRendererMaxPssKb` | {'int': 3422} |
| `chromeRendererPssKb` | {'int': 3422} |
| `chromeRenderers` | {'int': 3422} |
| `chromeTabs` | {'int': 3422} |
| `chromeTabsProbedProfiles` | {'int': 3422} |
| `chromeUtilityPssKb` | {'int': 3422} |
| `desktopPssKb` | {'int': 3422} |
| `hostPssKb` | {'int': 3422} |
| `kind` | {'str': 3422} |
| `memAvailableKb` | {'int': 3422} |
| `memTotalKb` | {'int': 3422} |
| `otherPssKb` | {'int': 3422} |
| `processes` | {'int': 3422} |
| `pssFallbackProcesses` | {'int': 3422} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
