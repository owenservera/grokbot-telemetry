# sandbox_telemetry_parse — 2026-11-12 06:43:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2009639 lines=4449
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4440 |
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
| `chromeBrowserPssKb` | {'int': 4440} |
| `chromeGpuPssKb` | {'int': 4440} |
| `chromeOtherPssKb` | {'int': 4440} |
| `chromeProcesses` | {'int': 4440} |
| `chromeProfiles` | {'int': 4440} |
| `chromeRendererMaxPssKb` | {'int': 4440} |
| `chromeRendererPssKb` | {'int': 4440} |
| `chromeRenderers` | {'int': 4440} |
| `chromeTabs` | {'int': 4440} |
| `chromeTabsProbedProfiles` | {'int': 4440} |
| `chromeUtilityPssKb` | {'int': 4440} |
| `desktopPssKb` | {'int': 4440} |
| `hostPssKb` | {'int': 4440} |
| `kind` | {'str': 4440} |
| `memAvailableKb` | {'int': 4440} |
| `memTotalKb` | {'int': 4440} |
| `otherPssKb` | {'int': 4440} |
| `processes` | {'int': 4440} |
| `pssFallbackProcesses` | {'int': 4440} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
