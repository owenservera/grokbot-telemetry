# sandbox_telemetry_parse — 2026-11-06 13:46:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=36272 lines=86
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 79 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 79} |
| `chromeGpuPssKb` | {'int': 79} |
| `chromeOtherPssKb` | {'int': 79} |
| `chromeProcesses` | {'int': 79} |
| `chromeProfiles` | {'int': 79} |
| `chromeRendererMaxPssKb` | {'int': 79} |
| `chromeRendererPssKb` | {'int': 79} |
| `chromeRenderers` | {'int': 79} |
| `chromeTabs` | {'int': 79} |
| `chromeTabsProbedProfiles` | {'int': 79} |
| `chromeUtilityPssKb` | {'int': 79} |
| `desktopPssKb` | {'int': 79} |
| `hostPssKb` | {'int': 79} |
| `kind` | {'str': 79} |
| `memAvailableKb` | {'int': 79} |
| `memTotalKb` | {'int': 79} |
| `otherPssKb` | {'int': 79} |
| `processes` | {'int': 79} |
| `pssFallbackProcesses` | {'int': 79} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
