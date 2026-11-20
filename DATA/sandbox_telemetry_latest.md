# sandbox_telemetry_parse — 2026-11-20 09:18:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1655145 lines=3669
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3658 |
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
| `chromeBrowserPssKb` | {'int': 3658} |
| `chromeGpuPssKb` | {'int': 3658} |
| `chromeOtherPssKb` | {'int': 3658} |
| `chromeProcesses` | {'int': 3658} |
| `chromeProfiles` | {'int': 3658} |
| `chromeRendererMaxPssKb` | {'int': 3658} |
| `chromeRendererPssKb` | {'int': 3658} |
| `chromeRenderers` | {'int': 3658} |
| `chromeTabs` | {'int': 3658} |
| `chromeTabsProbedProfiles` | {'int': 3658} |
| `chromeUtilityPssKb` | {'int': 3658} |
| `desktopPssKb` | {'int': 3658} |
| `hostPssKb` | {'int': 3658} |
| `kind` | {'str': 3658} |
| `memAvailableKb` | {'int': 3658} |
| `memTotalKb` | {'int': 3658} |
| `otherPssKb` | {'int': 3658} |
| `processes` | {'int': 3658} |
| `pssFallbackProcesses` | {'int': 3658} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
