# sandbox_telemetry_parse — 2026-11-12 04:58:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1976182 lines=4375
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4366 |
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
| `chromeBrowserPssKb` | {'int': 4366} |
| `chromeGpuPssKb` | {'int': 4366} |
| `chromeOtherPssKb` | {'int': 4366} |
| `chromeProcesses` | {'int': 4366} |
| `chromeProfiles` | {'int': 4366} |
| `chromeRendererMaxPssKb` | {'int': 4366} |
| `chromeRendererPssKb` | {'int': 4366} |
| `chromeRenderers` | {'int': 4366} |
| `chromeTabs` | {'int': 4366} |
| `chromeTabsProbedProfiles` | {'int': 4366} |
| `chromeUtilityPssKb` | {'int': 4366} |
| `desktopPssKb` | {'int': 4366} |
| `hostPssKb` | {'int': 4366} |
| `kind` | {'str': 4366} |
| `memAvailableKb` | {'int': 4366} |
| `memTotalKb` | {'int': 4366} |
| `otherPssKb` | {'int': 4366} |
| `processes` | {'int': 4366} |
| `pssFallbackProcesses` | {'int': 4366} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
