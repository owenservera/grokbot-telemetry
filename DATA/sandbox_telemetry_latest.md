# sandbox_telemetry_parse — 2026-11-23 22:35:34 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2019262 lines=4477
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4462 |
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
| `chromeBrowserPssKb` | {'int': 4462} |
| `chromeGpuPssKb` | {'int': 4462} |
| `chromeOtherPssKb` | {'int': 4462} |
| `chromeProcesses` | {'int': 4462} |
| `chromeProfiles` | {'int': 4462} |
| `chromeRendererMaxPssKb` | {'int': 4462} |
| `chromeRendererPssKb` | {'int': 4462} |
| `chromeRenderers` | {'int': 4462} |
| `chromeTabs` | {'int': 4462} |
| `chromeTabsProbedProfiles` | {'int': 4462} |
| `chromeUtilityPssKb` | {'int': 4462} |
| `desktopPssKb` | {'int': 4462} |
| `hostPssKb` | {'int': 4462} |
| `kind` | {'str': 4462} |
| `memAvailableKb` | {'int': 4462} |
| `memTotalKb` | {'int': 4462} |
| `otherPssKb` | {'int': 4462} |
| `processes` | {'int': 4462} |
| `pssFallbackProcesses` | {'int': 4462} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
