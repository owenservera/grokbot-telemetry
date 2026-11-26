# sandbox_telemetry_parse — 2026-11-26 17:53:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=19634 lines=50
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 42 |
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
| `chromeBrowserPssKb` | {'int': 42} |
| `chromeGpuPssKb` | {'int': 42} |
| `chromeOtherPssKb` | {'int': 42} |
| `chromeProcesses` | {'int': 42} |
| `chromeProfiles` | {'int': 42} |
| `chromeRendererMaxPssKb` | {'int': 42} |
| `chromeRendererPssKb` | {'int': 42} |
| `chromeRenderers` | {'int': 42} |
| `chromeTabs` | {'int': 42} |
| `chromeTabsProbedProfiles` | {'int': 42} |
| `chromeUtilityPssKb` | {'int': 42} |
| `desktopPssKb` | {'int': 42} |
| `hostPssKb` | {'int': 42} |
| `kind` | {'str': 42} |
| `memAvailableKb` | {'int': 42} |
| `memTotalKb` | {'int': 42} |
| `otherPssKb` | {'int': 42} |
| `processes` | {'int': 42} |
| `pssFallbackProcesses` | {'int': 42} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
