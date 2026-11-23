# sandbox_telemetry_parse — 2026-11-23 16:56:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1915602 lines=4248
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4233 |
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
| `chromeBrowserPssKb` | {'int': 4233} |
| `chromeGpuPssKb` | {'int': 4233} |
| `chromeOtherPssKb` | {'int': 4233} |
| `chromeProcesses` | {'int': 4233} |
| `chromeProfiles` | {'int': 4233} |
| `chromeRendererMaxPssKb` | {'int': 4233} |
| `chromeRendererPssKb` | {'int': 4233} |
| `chromeRenderers` | {'int': 4233} |
| `chromeTabs` | {'int': 4233} |
| `chromeTabsProbedProfiles` | {'int': 4233} |
| `chromeUtilityPssKb` | {'int': 4233} |
| `desktopPssKb` | {'int': 4233} |
| `hostPssKb` | {'int': 4233} |
| `kind` | {'str': 4233} |
| `memAvailableKb` | {'int': 4233} |
| `memTotalKb` | {'int': 4233} |
| `otherPssKb` | {'int': 4233} |
| `processes` | {'int': 4233} |
| `pssFallbackProcesses` | {'int': 4233} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
