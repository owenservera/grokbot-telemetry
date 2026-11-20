# sandbox_telemetry_parse — 2026-11-20 08:08:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1632538 lines=3619
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3608 |
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
| `chromeBrowserPssKb` | {'int': 3608} |
| `chromeGpuPssKb` | {'int': 3608} |
| `chromeOtherPssKb` | {'int': 3608} |
| `chromeProcesses` | {'int': 3608} |
| `chromeProfiles` | {'int': 3608} |
| `chromeRendererMaxPssKb` | {'int': 3608} |
| `chromeRendererPssKb` | {'int': 3608} |
| `chromeRenderers` | {'int': 3608} |
| `chromeTabs` | {'int': 3608} |
| `chromeTabsProbedProfiles` | {'int': 3608} |
| `chromeUtilityPssKb` | {'int': 3608} |
| `desktopPssKb` | {'int': 3608} |
| `hostPssKb` | {'int': 3608} |
| `kind` | {'str': 3608} |
| `memAvailableKb` | {'int': 3608} |
| `memTotalKb` | {'int': 3608} |
| `otherPssKb` | {'int': 3608} |
| `processes` | {'int': 3608} |
| `pssFallbackProcesses` | {'int': 3608} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
