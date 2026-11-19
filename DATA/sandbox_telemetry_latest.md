# sandbox_telemetry_parse — 2026-11-19 08:05:04 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1180064 lines=2617
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2608 |
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
| `chromeBrowserPssKb` | {'int': 2608} |
| `chromeGpuPssKb` | {'int': 2608} |
| `chromeOtherPssKb` | {'int': 2608} |
| `chromeProcesses` | {'int': 2608} |
| `chromeProfiles` | {'int': 2608} |
| `chromeRendererMaxPssKb` | {'int': 2608} |
| `chromeRendererPssKb` | {'int': 2608} |
| `chromeRenderers` | {'int': 2608} |
| `chromeTabs` | {'int': 2608} |
| `chromeTabsProbedProfiles` | {'int': 2608} |
| `chromeUtilityPssKb` | {'int': 2608} |
| `desktopPssKb` | {'int': 2608} |
| `hostPssKb` | {'int': 2608} |
| `kind` | {'str': 2608} |
| `memAvailableKb` | {'int': 2608} |
| `memTotalKb` | {'int': 2608} |
| `otherPssKb` | {'int': 2608} |
| `processes` | {'int': 2608} |
| `pssFallbackProcesses` | {'int': 2608} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
