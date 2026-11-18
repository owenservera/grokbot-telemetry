# sandbox_telemetry_parse — 2026-11-18 07:08:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=725842 lines=1611
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1604 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `chromeBrowserPssKb` | {'int': 1604} |
| `chromeGpuPssKb` | {'int': 1604} |
| `chromeOtherPssKb` | {'int': 1604} |
| `chromeProcesses` | {'int': 1604} |
| `chromeProfiles` | {'int': 1604} |
| `chromeRendererMaxPssKb` | {'int': 1604} |
| `chromeRendererPssKb` | {'int': 1604} |
| `chromeRenderers` | {'int': 1604} |
| `chromeTabs` | {'int': 1604} |
| `chromeTabsProbedProfiles` | {'int': 1604} |
| `chromeUtilityPssKb` | {'int': 1604} |
| `desktopPssKb` | {'int': 1604} |
| `hostPssKb` | {'int': 1604} |
| `kind` | {'str': 1604} |
| `memAvailableKb` | {'int': 1604} |
| `memTotalKb` | {'int': 1604} |
| `otherPssKb` | {'int': 1604} |
| `processes` | {'int': 1604} |
| `pssFallbackProcesses` | {'int': 1604} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
