# sandbox_telemetry_parse — 2026-11-24 17:30:37 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2378390 lines=5271
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5256 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 5256} |
| `chromeGpuPssKb` | {'int': 5256} |
| `chromeOtherPssKb` | {'int': 5256} |
| `chromeProcesses` | {'int': 5256} |
| `chromeProfiles` | {'int': 5256} |
| `chromeRendererMaxPssKb` | {'int': 5256} |
| `chromeRendererPssKb` | {'int': 5256} |
| `chromeRenderers` | {'int': 5256} |
| `chromeTabs` | {'int': 5256} |
| `chromeTabsProbedProfiles` | {'int': 5256} |
| `chromeUtilityPssKb` | {'int': 5256} |
| `desktopPssKb` | {'int': 5256} |
| `hostPssKb` | {'int': 5256} |
| `kind` | {'str': 5256} |
| `memAvailableKb` | {'int': 5256} |
| `memTotalKb` | {'int': 5256} |
| `otherPssKb` | {'int': 5256} |
| `processes` | {'int': 5256} |
| `pssFallbackProcesses` | {'int': 5256} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
