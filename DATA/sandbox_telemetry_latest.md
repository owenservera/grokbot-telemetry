# sandbox_telemetry_parse — 2026-11-20 11:47:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1699004 lines=3766
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3755 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3755} |
| `chromeGpuPssKb` | {'int': 3755} |
| `chromeOtherPssKb` | {'int': 3755} |
| `chromeProcesses` | {'int': 3755} |
| `chromeProfiles` | {'int': 3755} |
| `chromeRendererMaxPssKb` | {'int': 3755} |
| `chromeRendererPssKb` | {'int': 3755} |
| `chromeRenderers` | {'int': 3755} |
| `chromeTabs` | {'int': 3755} |
| `chromeTabsProbedProfiles` | {'int': 3755} |
| `chromeUtilityPssKb` | {'int': 3755} |
| `desktopPssKb` | {'int': 3755} |
| `hostPssKb` | {'int': 3755} |
| `kind` | {'str': 3755} |
| `memAvailableKb` | {'int': 3755} |
| `memTotalKb` | {'int': 3755} |
| `otherPssKb` | {'int': 3755} |
| `processes` | {'int': 3755} |
| `pssFallbackProcesses` | {'int': 3755} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
