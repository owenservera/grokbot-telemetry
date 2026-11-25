# sandbox_telemetry_parse — 2026-11-25 12:49:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2763763 lines=6123
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6108 |
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
| `chromeBrowserPssKb` | {'int': 6108} |
| `chromeGpuPssKb` | {'int': 6108} |
| `chromeOtherPssKb` | {'int': 6108} |
| `chromeProcesses` | {'int': 6108} |
| `chromeProfiles` | {'int': 6108} |
| `chromeRendererMaxPssKb` | {'int': 6108} |
| `chromeRendererPssKb` | {'int': 6108} |
| `chromeRenderers` | {'int': 6108} |
| `chromeTabs` | {'int': 6108} |
| `chromeTabsProbedProfiles` | {'int': 6108} |
| `chromeUtilityPssKb` | {'int': 6108} |
| `desktopPssKb` | {'int': 6108} |
| `hostPssKb` | {'int': 6108} |
| `kind` | {'str': 6108} |
| `memAvailableKb` | {'int': 6108} |
| `memTotalKb` | {'int': 6108} |
| `otherPssKb` | {'int': 6108} |
| `processes` | {'int': 6108} |
| `pssFallbackProcesses` | {'int': 6108} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
