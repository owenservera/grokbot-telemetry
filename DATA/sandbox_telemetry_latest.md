# sandbox_telemetry_parse — 2026-11-25 22:54:38 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2959559 lines=6556
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6541 |
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
| `chromeBrowserPssKb` | {'int': 6541} |
| `chromeGpuPssKb` | {'int': 6541} |
| `chromeOtherPssKb` | {'int': 6541} |
| `chromeProcesses` | {'int': 6541} |
| `chromeProfiles` | {'int': 6541} |
| `chromeRendererMaxPssKb` | {'int': 6541} |
| `chromeRendererPssKb` | {'int': 6541} |
| `chromeRenderers` | {'int': 6541} |
| `chromeTabs` | {'int': 6541} |
| `chromeTabsProbedProfiles` | {'int': 6541} |
| `chromeUtilityPssKb` | {'int': 6541} |
| `desktopPssKb` | {'int': 6541} |
| `hostPssKb` | {'int': 6541} |
| `kind` | {'str': 6541} |
| `memAvailableKb` | {'int': 6541} |
| `memTotalKb` | {'int': 6541} |
| `otherPssKb` | {'int': 6541} |
| `processes` | {'int': 6541} |
| `pssFallbackProcesses` | {'int': 6541} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
