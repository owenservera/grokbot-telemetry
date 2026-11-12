# sandbox_telemetry_parse — 2026-11-12 15:30:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2197930 lines=4865
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4856 |
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
| `chromeBrowserPssKb` | {'int': 4856} |
| `chromeGpuPssKb` | {'int': 4856} |
| `chromeOtherPssKb` | {'int': 4856} |
| `chromeProcesses` | {'int': 4856} |
| `chromeProfiles` | {'int': 4856} |
| `chromeRendererMaxPssKb` | {'int': 4856} |
| `chromeRendererPssKb` | {'int': 4856} |
| `chromeRenderers` | {'int': 4856} |
| `chromeTabs` | {'int': 4856} |
| `chromeTabsProbedProfiles` | {'int': 4856} |
| `chromeUtilityPssKb` | {'int': 4856} |
| `desktopPssKb` | {'int': 4856} |
| `hostPssKb` | {'int': 4856} |
| `kind` | {'str': 4856} |
| `memAvailableKb` | {'int': 4856} |
| `memTotalKb` | {'int': 4856} |
| `otherPssKb` | {'int': 4856} |
| `processes` | {'int': 4856} |
| `pssFallbackProcesses` | {'int': 4856} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
