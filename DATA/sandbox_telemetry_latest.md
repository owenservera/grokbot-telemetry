# sandbox_telemetry_parse — 2026-11-11 22:34:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1851714 lines=4100
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4091 |
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
| `chromeBrowserPssKb` | {'int': 4091} |
| `chromeGpuPssKb` | {'int': 4091} |
| `chromeOtherPssKb` | {'int': 4091} |
| `chromeProcesses` | {'int': 4091} |
| `chromeProfiles` | {'int': 4091} |
| `chromeRendererMaxPssKb` | {'int': 4091} |
| `chromeRendererPssKb` | {'int': 4091} |
| `chromeRenderers` | {'int': 4091} |
| `chromeTabs` | {'int': 4091} |
| `chromeTabsProbedProfiles` | {'int': 4091} |
| `chromeUtilityPssKb` | {'int': 4091} |
| `desktopPssKb` | {'int': 4091} |
| `hostPssKb` | {'int': 4091} |
| `kind` | {'str': 4091} |
| `memAvailableKb` | {'int': 4091} |
| `memTotalKb` | {'int': 4091} |
| `otherPssKb` | {'int': 4091} |
| `processes` | {'int': 4091} |
| `pssFallbackProcesses` | {'int': 4091} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
