# sandbox_telemetry_parse — 2026-11-24 21:33:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2459426 lines=5450
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5435 |
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
| `chromeBrowserPssKb` | {'int': 5435} |
| `chromeGpuPssKb` | {'int': 5435} |
| `chromeOtherPssKb` | {'int': 5435} |
| `chromeProcesses` | {'int': 5435} |
| `chromeProfiles` | {'int': 5435} |
| `chromeRendererMaxPssKb` | {'int': 5435} |
| `chromeRendererPssKb` | {'int': 5435} |
| `chromeRenderers` | {'int': 5435} |
| `chromeTabs` | {'int': 5435} |
| `chromeTabsProbedProfiles` | {'int': 5435} |
| `chromeUtilityPssKb` | {'int': 5435} |
| `desktopPssKb` | {'int': 5435} |
| `hostPssKb` | {'int': 5435} |
| `kind` | {'str': 5435} |
| `memAvailableKb` | {'int': 5435} |
| `memTotalKb` | {'int': 5435} |
| `otherPssKb` | {'int': 5435} |
| `processes` | {'int': 5435} |
| `pssFallbackProcesses` | {'int': 5435} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
