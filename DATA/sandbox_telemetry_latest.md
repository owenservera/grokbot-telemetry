# sandbox_telemetry_parse — 2026-11-12 05:11:51 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1982058 lines=4388
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4379 |
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
| `chromeBrowserPssKb` | {'int': 4379} |
| `chromeGpuPssKb` | {'int': 4379} |
| `chromeOtherPssKb` | {'int': 4379} |
| `chromeProcesses` | {'int': 4379} |
| `chromeProfiles` | {'int': 4379} |
| `chromeRendererMaxPssKb` | {'int': 4379} |
| `chromeRendererPssKb` | {'int': 4379} |
| `chromeRenderers` | {'int': 4379} |
| `chromeTabs` | {'int': 4379} |
| `chromeTabsProbedProfiles` | {'int': 4379} |
| `chromeUtilityPssKb` | {'int': 4379} |
| `desktopPssKb` | {'int': 4379} |
| `hostPssKb` | {'int': 4379} |
| `kind` | {'str': 4379} |
| `memAvailableKb` | {'int': 4379} |
| `memTotalKb` | {'int': 4379} |
| `otherPssKb` | {'int': 4379} |
| `processes` | {'int': 4379} |
| `pssFallbackProcesses` | {'int': 4379} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
