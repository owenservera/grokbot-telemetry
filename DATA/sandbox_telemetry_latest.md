# sandbox_telemetry_parse — 2026-11-11 23:22:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1867543 lines=4135
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4126 |
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
| `chromeBrowserPssKb` | {'int': 4126} |
| `chromeGpuPssKb` | {'int': 4126} |
| `chromeOtherPssKb` | {'int': 4126} |
| `chromeProcesses` | {'int': 4126} |
| `chromeProfiles` | {'int': 4126} |
| `chromeRendererMaxPssKb` | {'int': 4126} |
| `chromeRendererPssKb` | {'int': 4126} |
| `chromeRenderers` | {'int': 4126} |
| `chromeTabs` | {'int': 4126} |
| `chromeTabsProbedProfiles` | {'int': 4126} |
| `chromeUtilityPssKb` | {'int': 4126} |
| `desktopPssKb` | {'int': 4126} |
| `hostPssKb` | {'int': 4126} |
| `kind` | {'str': 4126} |
| `memAvailableKb` | {'int': 4126} |
| `memTotalKb` | {'int': 4126} |
| `otherPssKb` | {'int': 4126} |
| `processes` | {'int': 4126} |
| `pssFallbackProcesses` | {'int': 4126} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
