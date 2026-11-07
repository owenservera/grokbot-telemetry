# sandbox_telemetry_parse — 2026-11-07 15:03:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=510013 lines=1135
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1126 |
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
| `chromeBrowserPssKb` | {'int': 1126} |
| `chromeGpuPssKb` | {'int': 1126} |
| `chromeOtherPssKb` | {'int': 1126} |
| `chromeProcesses` | {'int': 1126} |
| `chromeProfiles` | {'int': 1126} |
| `chromeRendererMaxPssKb` | {'int': 1126} |
| `chromeRendererPssKb` | {'int': 1126} |
| `chromeRenderers` | {'int': 1126} |
| `chromeTabs` | {'int': 1126} |
| `chromeTabsProbedProfiles` | {'int': 1126} |
| `chromeUtilityPssKb` | {'int': 1126} |
| `desktopPssKb` | {'int': 1126} |
| `hostPssKb` | {'int': 1126} |
| `kind` | {'str': 1126} |
| `memAvailableKb` | {'int': 1126} |
| `memTotalKb` | {'int': 1126} |
| `otherPssKb` | {'int': 1126} |
| `processes` | {'int': 1126} |
| `pssFallbackProcesses` | {'int': 1126} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
