# sandbox_telemetry_parse — 2026-11-25 17:35:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2854660 lines=6324
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6309 |
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
| `chromeBrowserPssKb` | {'int': 6309} |
| `chromeGpuPssKb` | {'int': 6309} |
| `chromeOtherPssKb` | {'int': 6309} |
| `chromeProcesses` | {'int': 6309} |
| `chromeProfiles` | {'int': 6309} |
| `chromeRendererMaxPssKb` | {'int': 6309} |
| `chromeRendererPssKb` | {'int': 6309} |
| `chromeRenderers` | {'int': 6309} |
| `chromeTabs` | {'int': 6309} |
| `chromeTabsProbedProfiles` | {'int': 6309} |
| `chromeUtilityPssKb` | {'int': 6309} |
| `desktopPssKb` | {'int': 6309} |
| `hostPssKb` | {'int': 6309} |
| `kind` | {'str': 6309} |
| `memAvailableKb` | {'int': 6309} |
| `memTotalKb` | {'int': 6309} |
| `otherPssKb` | {'int': 6309} |
| `processes` | {'int': 6309} |
| `pssFallbackProcesses` | {'int': 6309} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
