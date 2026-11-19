# sandbox_telemetry_parse — 2026-11-19 09:08:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1198144 lines=2657
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2648 |
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
| `chromeBrowserPssKb` | {'int': 2648} |
| `chromeGpuPssKb` | {'int': 2648} |
| `chromeOtherPssKb` | {'int': 2648} |
| `chromeProcesses` | {'int': 2648} |
| `chromeProfiles` | {'int': 2648} |
| `chromeRendererMaxPssKb` | {'int': 2648} |
| `chromeRendererPssKb` | {'int': 2648} |
| `chromeRenderers` | {'int': 2648} |
| `chromeTabs` | {'int': 2648} |
| `chromeTabsProbedProfiles` | {'int': 2648} |
| `chromeUtilityPssKb` | {'int': 2648} |
| `desktopPssKb` | {'int': 2648} |
| `hostPssKb` | {'int': 2648} |
| `kind` | {'str': 2648} |
| `memAvailableKb` | {'int': 2648} |
| `memTotalKb` | {'int': 2648} |
| `otherPssKb` | {'int': 2648} |
| `processes` | {'int': 2648} |
| `pssFallbackProcesses` | {'int': 2648} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
