# sandbox_telemetry_parse — 2026-11-25 15:41:23 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2817126 lines=6241
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6226 |
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
| `chromeBrowserPssKb` | {'int': 6226} |
| `chromeGpuPssKb` | {'int': 6226} |
| `chromeOtherPssKb` | {'int': 6226} |
| `chromeProcesses` | {'int': 6226} |
| `chromeProfiles` | {'int': 6226} |
| `chromeRendererMaxPssKb` | {'int': 6226} |
| `chromeRendererPssKb` | {'int': 6226} |
| `chromeRenderers` | {'int': 6226} |
| `chromeTabs` | {'int': 6226} |
| `chromeTabsProbedProfiles` | {'int': 6226} |
| `chromeUtilityPssKb` | {'int': 6226} |
| `desktopPssKb` | {'int': 6226} |
| `hostPssKb` | {'int': 6226} |
| `kind` | {'str': 6226} |
| `memAvailableKb` | {'int': 6226} |
| `memTotalKb` | {'int': 6226} |
| `otherPssKb` | {'int': 6226} |
| `processes` | {'int': 6226} |
| `pssFallbackProcesses` | {'int': 6226} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
