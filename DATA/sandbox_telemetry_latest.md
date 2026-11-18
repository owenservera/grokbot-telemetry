# sandbox_telemetry_parse — 2026-11-18 19:29:13 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=946268 lines=2100
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2091 |
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
| `chromeBrowserPssKb` | {'int': 2091} |
| `chromeGpuPssKb` | {'int': 2091} |
| `chromeOtherPssKb` | {'int': 2091} |
| `chromeProcesses` | {'int': 2091} |
| `chromeProfiles` | {'int': 2091} |
| `chromeRendererMaxPssKb` | {'int': 2091} |
| `chromeRendererPssKb` | {'int': 2091} |
| `chromeRenderers` | {'int': 2091} |
| `chromeTabs` | {'int': 2091} |
| `chromeTabsProbedProfiles` | {'int': 2091} |
| `chromeUtilityPssKb` | {'int': 2091} |
| `desktopPssKb` | {'int': 2091} |
| `hostPssKb` | {'int': 2091} |
| `kind` | {'str': 2091} |
| `memAvailableKb` | {'int': 2091} |
| `memTotalKb` | {'int': 2091} |
| `otherPssKb` | {'int': 2091} |
| `processes` | {'int': 2091} |
| `pssFallbackProcesses` | {'int': 2091} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
