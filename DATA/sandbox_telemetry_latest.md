# sandbox_telemetry_parse — 2026-11-12 11:34:34 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2110081 lines=4671
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4662 |
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
| `chromeBrowserPssKb` | {'int': 4662} |
| `chromeGpuPssKb` | {'int': 4662} |
| `chromeOtherPssKb` | {'int': 4662} |
| `chromeProcesses` | {'int': 4662} |
| `chromeProfiles` | {'int': 4662} |
| `chromeRendererMaxPssKb` | {'int': 4662} |
| `chromeRendererPssKb` | {'int': 4662} |
| `chromeRenderers` | {'int': 4662} |
| `chromeTabs` | {'int': 4662} |
| `chromeTabsProbedProfiles` | {'int': 4662} |
| `chromeUtilityPssKb` | {'int': 4662} |
| `desktopPssKb` | {'int': 4662} |
| `hostPssKb` | {'int': 4662} |
| `kind` | {'str': 4662} |
| `memAvailableKb` | {'int': 4662} |
| `memTotalKb` | {'int': 4662} |
| `otherPssKb` | {'int': 4662} |
| `processes` | {'int': 4662} |
| `pssFallbackProcesses` | {'int': 4662} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
