# sandbox_telemetry_parse — 2026-11-23 23:11:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2031022 lines=4503
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4488 |
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
| `chromeBrowserPssKb` | {'int': 4488} |
| `chromeGpuPssKb` | {'int': 4488} |
| `chromeOtherPssKb` | {'int': 4488} |
| `chromeProcesses` | {'int': 4488} |
| `chromeProfiles` | {'int': 4488} |
| `chromeRendererMaxPssKb` | {'int': 4488} |
| `chromeRendererPssKb` | {'int': 4488} |
| `chromeRenderers` | {'int': 4488} |
| `chromeTabs` | {'int': 4488} |
| `chromeTabsProbedProfiles` | {'int': 4488} |
| `chromeUtilityPssKb` | {'int': 4488} |
| `desktopPssKb` | {'int': 4488} |
| `hostPssKb` | {'int': 4488} |
| `kind` | {'str': 4488} |
| `memAvailableKb` | {'int': 4488} |
| `memTotalKb` | {'int': 4488} |
| `otherPssKb` | {'int': 4488} |
| `processes` | {'int': 4488} |
| `pssFallbackProcesses` | {'int': 4488} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
