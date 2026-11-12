# sandbox_telemetry_parse — 2026-11-12 21:55:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2343304 lines=5186
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5177 |
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
| `chromeBrowserPssKb` | {'int': 5177} |
| `chromeGpuPssKb` | {'int': 5177} |
| `chromeOtherPssKb` | {'int': 5177} |
| `chromeProcesses` | {'int': 5177} |
| `chromeProfiles` | {'int': 5177} |
| `chromeRendererMaxPssKb` | {'int': 5177} |
| `chromeRendererPssKb` | {'int': 5177} |
| `chromeRenderers` | {'int': 5177} |
| `chromeTabs` | {'int': 5177} |
| `chromeTabsProbedProfiles` | {'int': 5177} |
| `chromeUtilityPssKb` | {'int': 5177} |
| `desktopPssKb` | {'int': 5177} |
| `hostPssKb` | {'int': 5177} |
| `kind` | {'str': 5177} |
| `memAvailableKb` | {'int': 5177} |
| `memTotalKb` | {'int': 5177} |
| `otherPssKb` | {'int': 5177} |
| `processes` | {'int': 5177} |
| `pssFallbackProcesses` | {'int': 5177} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
