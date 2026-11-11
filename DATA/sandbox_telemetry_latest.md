# sandbox_telemetry_parse — 2026-11-11 17:38:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1742161 lines=3858
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3849 |
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
| `chromeBrowserPssKb` | {'int': 3849} |
| `chromeGpuPssKb` | {'int': 3849} |
| `chromeOtherPssKb` | {'int': 3849} |
| `chromeProcesses` | {'int': 3849} |
| `chromeProfiles` | {'int': 3849} |
| `chromeRendererMaxPssKb` | {'int': 3849} |
| `chromeRendererPssKb` | {'int': 3849} |
| `chromeRenderers` | {'int': 3849} |
| `chromeTabs` | {'int': 3849} |
| `chromeTabsProbedProfiles` | {'int': 3849} |
| `chromeUtilityPssKb` | {'int': 3849} |
| `desktopPssKb` | {'int': 3849} |
| `hostPssKb` | {'int': 3849} |
| `kind` | {'str': 3849} |
| `memAvailableKb` | {'int': 3849} |
| `memTotalKb` | {'int': 3849} |
| `otherPssKb` | {'int': 3849} |
| `processes` | {'int': 3849} |
| `pssFallbackProcesses` | {'int': 3849} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
