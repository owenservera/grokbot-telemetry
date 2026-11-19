# sandbox_telemetry_parse — 2026-11-19 19:36:38 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1413701 lines=3135
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3124 |
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
| `chromeBrowserPssKb` | {'int': 3124} |
| `chromeGpuPssKb` | {'int': 3124} |
| `chromeOtherPssKb` | {'int': 3124} |
| `chromeProcesses` | {'int': 3124} |
| `chromeProfiles` | {'int': 3124} |
| `chromeRendererMaxPssKb` | {'int': 3124} |
| `chromeRendererPssKb` | {'int': 3124} |
| `chromeRenderers` | {'int': 3124} |
| `chromeTabs` | {'int': 3124} |
| `chromeTabsProbedProfiles` | {'int': 3124} |
| `chromeUtilityPssKb` | {'int': 3124} |
| `desktopPssKb` | {'int': 3124} |
| `hostPssKb` | {'int': 3124} |
| `kind` | {'str': 3124} |
| `memAvailableKb` | {'int': 3124} |
| `memTotalKb` | {'int': 3124} |
| `otherPssKb` | {'int': 3124} |
| `processes` | {'int': 3124} |
| `pssFallbackProcesses` | {'int': 3124} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
