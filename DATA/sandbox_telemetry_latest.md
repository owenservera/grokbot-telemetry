# sandbox_telemetry_parse — 2026-11-12 07:02:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2016419 lines=4464
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4455 |
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
| `chromeBrowserPssKb` | {'int': 4455} |
| `chromeGpuPssKb` | {'int': 4455} |
| `chromeOtherPssKb` | {'int': 4455} |
| `chromeProcesses` | {'int': 4455} |
| `chromeProfiles` | {'int': 4455} |
| `chromeRendererMaxPssKb` | {'int': 4455} |
| `chromeRendererPssKb` | {'int': 4455} |
| `chromeRenderers` | {'int': 4455} |
| `chromeTabs` | {'int': 4455} |
| `chromeTabsProbedProfiles` | {'int': 4455} |
| `chromeUtilityPssKb` | {'int': 4455} |
| `desktopPssKb` | {'int': 4455} |
| `hostPssKb` | {'int': 4455} |
| `kind` | {'str': 4455} |
| `memAvailableKb` | {'int': 4455} |
| `memTotalKb` | {'int': 4455} |
| `otherPssKb` | {'int': 4455} |
| `processes` | {'int': 4455} |
| `pssFallbackProcesses` | {'int': 4455} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
