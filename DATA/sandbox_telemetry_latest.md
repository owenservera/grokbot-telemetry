# sandbox_telemetry_parse — 2026-11-26 02:15:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3029221 lines=6710
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6695 |
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
| `chromeBrowserPssKb` | {'int': 6695} |
| `chromeGpuPssKb` | {'int': 6695} |
| `chromeOtherPssKb` | {'int': 6695} |
| `chromeProcesses` | {'int': 6695} |
| `chromeProfiles` | {'int': 6695} |
| `chromeRendererMaxPssKb` | {'int': 6695} |
| `chromeRendererPssKb` | {'int': 6695} |
| `chromeRenderers` | {'int': 6695} |
| `chromeTabs` | {'int': 6695} |
| `chromeTabsProbedProfiles` | {'int': 6695} |
| `chromeUtilityPssKb` | {'int': 6695} |
| `desktopPssKb` | {'int': 6695} |
| `hostPssKb` | {'int': 6695} |
| `kind` | {'str': 6695} |
| `memAvailableKb` | {'int': 6695} |
| `memTotalKb` | {'int': 6695} |
| `otherPssKb` | {'int': 6695} |
| `processes` | {'int': 6695} |
| `pssFallbackProcesses` | {'int': 6695} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
