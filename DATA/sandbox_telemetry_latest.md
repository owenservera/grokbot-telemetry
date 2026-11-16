# sandbox_telemetry_parse — 2026-11-16 19:41:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=96434 lines=219
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 212 |
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
| `chromeBrowserPssKb` | {'int': 212} |
| `chromeGpuPssKb` | {'int': 212} |
| `chromeOtherPssKb` | {'int': 212} |
| `chromeProcesses` | {'int': 212} |
| `chromeProfiles` | {'int': 212} |
| `chromeRendererMaxPssKb` | {'int': 212} |
| `chromeRendererPssKb` | {'int': 212} |
| `chromeRenderers` | {'int': 212} |
| `chromeTabs` | {'int': 212} |
| `chromeTabsProbedProfiles` | {'int': 212} |
| `chromeUtilityPssKb` | {'int': 212} |
| `desktopPssKb` | {'int': 212} |
| `hostPssKb` | {'int': 212} |
| `kind` | {'str': 212} |
| `memAvailableKb` | {'int': 212} |
| `memTotalKb` | {'int': 212} |
| `otherPssKb` | {'int': 212} |
| `processes` | {'int': 212} |
| `pssFallbackProcesses` | {'int': 212} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
