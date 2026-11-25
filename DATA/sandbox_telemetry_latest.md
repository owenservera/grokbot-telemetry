# sandbox_telemetry_parse — 2026-11-25 13:43:34 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2779596 lines=6158
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6143 |
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
| `chromeBrowserPssKb` | {'int': 6143} |
| `chromeGpuPssKb` | {'int': 6143} |
| `chromeOtherPssKb` | {'int': 6143} |
| `chromeProcesses` | {'int': 6143} |
| `chromeProfiles` | {'int': 6143} |
| `chromeRendererMaxPssKb` | {'int': 6143} |
| `chromeRendererPssKb` | {'int': 6143} |
| `chromeRenderers` | {'int': 6143} |
| `chromeTabs` | {'int': 6143} |
| `chromeTabsProbedProfiles` | {'int': 6143} |
| `chromeUtilityPssKb` | {'int': 6143} |
| `desktopPssKb` | {'int': 6143} |
| `hostPssKb` | {'int': 6143} |
| `kind` | {'str': 6143} |
| `memAvailableKb` | {'int': 6143} |
| `memTotalKb` | {'int': 6143} |
| `otherPssKb` | {'int': 6143} |
| `processes` | {'int': 6143} |
| `pssFallbackProcesses` | {'int': 6143} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
