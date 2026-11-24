# sandbox_telemetry_parse — 2026-11-24 19:20:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2414166 lines=5350
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5335 |
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
| `chromeBrowserPssKb` | {'int': 5335} |
| `chromeGpuPssKb` | {'int': 5335} |
| `chromeOtherPssKb` | {'int': 5335} |
| `chromeProcesses` | {'int': 5335} |
| `chromeProfiles` | {'int': 5335} |
| `chromeRendererMaxPssKb` | {'int': 5335} |
| `chromeRendererPssKb` | {'int': 5335} |
| `chromeRenderers` | {'int': 5335} |
| `chromeTabs` | {'int': 5335} |
| `chromeTabsProbedProfiles` | {'int': 5335} |
| `chromeUtilityPssKb` | {'int': 5335} |
| `desktopPssKb` | {'int': 5335} |
| `hostPssKb` | {'int': 5335} |
| `kind` | {'str': 5335} |
| `memAvailableKb` | {'int': 5335} |
| `memTotalKb` | {'int': 5335} |
| `otherPssKb` | {'int': 5335} |
| `processes` | {'int': 5335} |
| `pssFallbackProcesses` | {'int': 5335} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
