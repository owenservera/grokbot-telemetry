# sandbox_telemetry_parse — 2026-11-27 06:03:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=273829 lines=612
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 604 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 604} |
| `chromeGpuPssKb` | {'int': 604} |
| `chromeOtherPssKb` | {'int': 604} |
| `chromeProcesses` | {'int': 604} |
| `chromeProfiles` | {'int': 604} |
| `chromeRendererMaxPssKb` | {'int': 604} |
| `chromeRendererPssKb` | {'int': 604} |
| `chromeRenderers` | {'int': 604} |
| `chromeTabs` | {'int': 604} |
| `chromeTabsProbedProfiles` | {'int': 604} |
| `chromeUtilityPssKb` | {'int': 604} |
| `desktopPssKb` | {'int': 604} |
| `hostPssKb` | {'int': 604} |
| `kind` | {'str': 604} |
| `memAvailableKb` | {'int': 604} |
| `memTotalKb` | {'int': 604} |
| `otherPssKb` | {'int': 604} |
| `processes` | {'int': 604} |
| `pssFallbackProcesses` | {'int': 604} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
