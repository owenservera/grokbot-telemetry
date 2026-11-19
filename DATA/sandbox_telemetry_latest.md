# sandbox_telemetry_parse — 2026-11-19 05:14:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1131680 lines=2510
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2501 |
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
| `chromeBrowserPssKb` | {'int': 2501} |
| `chromeGpuPssKb` | {'int': 2501} |
| `chromeOtherPssKb` | {'int': 2501} |
| `chromeProcesses` | {'int': 2501} |
| `chromeProfiles` | {'int': 2501} |
| `chromeRendererMaxPssKb` | {'int': 2501} |
| `chromeRendererPssKb` | {'int': 2501} |
| `chromeRenderers` | {'int': 2501} |
| `chromeTabs` | {'int': 2501} |
| `chromeTabsProbedProfiles` | {'int': 2501} |
| `chromeUtilityPssKb` | {'int': 2501} |
| `desktopPssKb` | {'int': 2501} |
| `hostPssKb` | {'int': 2501} |
| `kind` | {'str': 2501} |
| `memAvailableKb` | {'int': 2501} |
| `memTotalKb` | {'int': 2501} |
| `otherPssKb` | {'int': 2501} |
| `processes` | {'int': 2501} |
| `pssFallbackProcesses` | {'int': 2501} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
