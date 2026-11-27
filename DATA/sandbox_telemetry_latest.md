# sandbox_telemetry_parse — 2026-11-27 04:52:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=244428 lines=547
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 539 |
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
| `chromeBrowserPssKb` | {'int': 539} |
| `chromeGpuPssKb` | {'int': 539} |
| `chromeOtherPssKb` | {'int': 539} |
| `chromeProcesses` | {'int': 539} |
| `chromeProfiles` | {'int': 539} |
| `chromeRendererMaxPssKb` | {'int': 539} |
| `chromeRendererPssKb` | {'int': 539} |
| `chromeRenderers` | {'int': 539} |
| `chromeTabs` | {'int': 539} |
| `chromeTabsProbedProfiles` | {'int': 539} |
| `chromeUtilityPssKb` | {'int': 539} |
| `desktopPssKb` | {'int': 539} |
| `hostPssKb` | {'int': 539} |
| `kind` | {'str': 539} |
| `memAvailableKb` | {'int': 539} |
| `memTotalKb` | {'int': 539} |
| `otherPssKb` | {'int': 539} |
| `processes` | {'int': 539} |
| `pssFallbackProcesses` | {'int': 539} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
