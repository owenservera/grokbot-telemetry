# sandbox_telemetry_parse — 2026-11-25 23:10:21 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2964985 lines=6568
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6553 |
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
| `chromeBrowserPssKb` | {'int': 6553} |
| `chromeGpuPssKb` | {'int': 6553} |
| `chromeOtherPssKb` | {'int': 6553} |
| `chromeProcesses` | {'int': 6553} |
| `chromeProfiles` | {'int': 6553} |
| `chromeRendererMaxPssKb` | {'int': 6553} |
| `chromeRendererPssKb` | {'int': 6553} |
| `chromeRenderers` | {'int': 6553} |
| `chromeTabs` | {'int': 6553} |
| `chromeTabsProbedProfiles` | {'int': 6553} |
| `chromeUtilityPssKb` | {'int': 6553} |
| `desktopPssKb` | {'int': 6553} |
| `hostPssKb` | {'int': 6553} |
| `kind` | {'str': 6553} |
| `memAvailableKb` | {'int': 6553} |
| `memTotalKb` | {'int': 6553} |
| `otherPssKb` | {'int': 6553} |
| `processes` | {'int': 6553} |
| `pssFallbackProcesses` | {'int': 6553} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
