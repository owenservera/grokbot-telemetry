# sandbox_telemetry_parse — 2026-11-12 04:02:26 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1960349 lines=4340
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4331 |
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
| `chromeBrowserPssKb` | {'int': 4331} |
| `chromeGpuPssKb` | {'int': 4331} |
| `chromeOtherPssKb` | {'int': 4331} |
| `chromeProcesses` | {'int': 4331} |
| `chromeProfiles` | {'int': 4331} |
| `chromeRendererMaxPssKb` | {'int': 4331} |
| `chromeRendererPssKb` | {'int': 4331} |
| `chromeRenderers` | {'int': 4331} |
| `chromeTabs` | {'int': 4331} |
| `chromeTabsProbedProfiles` | {'int': 4331} |
| `chromeUtilityPssKb` | {'int': 4331} |
| `desktopPssKb` | {'int': 4331} |
| `hostPssKb` | {'int': 4331} |
| `kind` | {'str': 4331} |
| `memAvailableKb` | {'int': 4331} |
| `memTotalKb` | {'int': 4331} |
| `otherPssKb` | {'int': 4331} |
| `processes` | {'int': 4331} |
| `pssFallbackProcesses` | {'int': 4331} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
