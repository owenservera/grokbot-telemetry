# sandbox_telemetry_parse — 2026-11-19 07:59:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1178256 lines=2613
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2604 |
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
| `chromeBrowserPssKb` | {'int': 2604} |
| `chromeGpuPssKb` | {'int': 2604} |
| `chromeOtherPssKb` | {'int': 2604} |
| `chromeProcesses` | {'int': 2604} |
| `chromeProfiles` | {'int': 2604} |
| `chromeRendererMaxPssKb` | {'int': 2604} |
| `chromeRendererPssKb` | {'int': 2604} |
| `chromeRenderers` | {'int': 2604} |
| `chromeTabs` | {'int': 2604} |
| `chromeTabsProbedProfiles` | {'int': 2604} |
| `chromeUtilityPssKb` | {'int': 2604} |
| `desktopPssKb` | {'int': 2604} |
| `hostPssKb` | {'int': 2604} |
| `kind` | {'str': 2604} |
| `memAvailableKb` | {'int': 2604} |
| `memTotalKb` | {'int': 2604} |
| `otherPssKb` | {'int': 2604} |
| `processes` | {'int': 2604} |
| `pssFallbackProcesses` | {'int': 2604} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
