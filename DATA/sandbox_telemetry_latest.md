# sandbox_telemetry_parse — 2026-11-26 00:11:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2988065 lines=6619
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6604 |
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
| `chromeBrowserPssKb` | {'int': 6604} |
| `chromeGpuPssKb` | {'int': 6604} |
| `chromeOtherPssKb` | {'int': 6604} |
| `chromeProcesses` | {'int': 6604} |
| `chromeProfiles` | {'int': 6604} |
| `chromeRendererMaxPssKb` | {'int': 6604} |
| `chromeRendererPssKb` | {'int': 6604} |
| `chromeRenderers` | {'int': 6604} |
| `chromeTabs` | {'int': 6604} |
| `chromeTabsProbedProfiles` | {'int': 6604} |
| `chromeUtilityPssKb` | {'int': 6604} |
| `desktopPssKb` | {'int': 6604} |
| `hostPssKb` | {'int': 6604} |
| `kind` | {'str': 6604} |
| `memAvailableKb` | {'int': 6604} |
| `memTotalKb` | {'int': 6604} |
| `otherPssKb` | {'int': 6604} |
| `processes` | {'int': 6604} |
| `pssFallbackProcesses` | {'int': 6604} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
