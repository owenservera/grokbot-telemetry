# sandbox_telemetry_parse — 2026-11-25 13:37:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2778240 lines=6155
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6140 |
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
| `chromeBrowserPssKb` | {'int': 6140} |
| `chromeGpuPssKb` | {'int': 6140} |
| `chromeOtherPssKb` | {'int': 6140} |
| `chromeProcesses` | {'int': 6140} |
| `chromeProfiles` | {'int': 6140} |
| `chromeRendererMaxPssKb` | {'int': 6140} |
| `chromeRendererPssKb` | {'int': 6140} |
| `chromeRenderers` | {'int': 6140} |
| `chromeTabs` | {'int': 6140} |
| `chromeTabsProbedProfiles` | {'int': 6140} |
| `chromeUtilityPssKb` | {'int': 6140} |
| `desktopPssKb` | {'int': 6140} |
| `hostPssKb` | {'int': 6140} |
| `kind` | {'str': 6140} |
| `memAvailableKb` | {'int': 6140} |
| `memTotalKb` | {'int': 6140} |
| `otherPssKb` | {'int': 6140} |
| `processes` | {'int': 6140} |
| `pssFallbackProcesses` | {'int': 6140} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
