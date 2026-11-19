# sandbox_telemetry_parse — 2026-11-19 12:35:21 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1276390 lines=2830
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2821 |
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
| `chromeBrowserPssKb` | {'int': 2821} |
| `chromeGpuPssKb` | {'int': 2821} |
| `chromeOtherPssKb` | {'int': 2821} |
| `chromeProcesses` | {'int': 2821} |
| `chromeProfiles` | {'int': 2821} |
| `chromeRendererMaxPssKb` | {'int': 2821} |
| `chromeRendererPssKb` | {'int': 2821} |
| `chromeRenderers` | {'int': 2821} |
| `chromeTabs` | {'int': 2821} |
| `chromeTabsProbedProfiles` | {'int': 2821} |
| `chromeUtilityPssKb` | {'int': 2821} |
| `desktopPssKb` | {'int': 2821} |
| `hostPssKb` | {'int': 2821} |
| `kind` | {'str': 2821} |
| `memAvailableKb` | {'int': 2821} |
| `memTotalKb` | {'int': 2821} |
| `otherPssKb` | {'int': 2821} |
| `processes` | {'int': 2821} |
| `pssFallbackProcesses` | {'int': 2821} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
