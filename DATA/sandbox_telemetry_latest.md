# sandbox_telemetry_parse — 2026-11-27 02:44:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=199201 lines=447
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 439 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

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
| `chromeBrowserPssKb` | {'int': 439} |
| `chromeGpuPssKb` | {'int': 439} |
| `chromeOtherPssKb` | {'int': 439} |
| `chromeProcesses` | {'int': 439} |
| `chromeProfiles` | {'int': 439} |
| `chromeRendererMaxPssKb` | {'int': 439} |
| `chromeRendererPssKb` | {'int': 439} |
| `chromeRenderers` | {'int': 439} |
| `chromeTabs` | {'int': 439} |
| `chromeTabsProbedProfiles` | {'int': 439} |
| `chromeUtilityPssKb` | {'int': 439} |
| `desktopPssKb` | {'int': 439} |
| `hostPssKb` | {'int': 439} |
| `kind` | {'str': 439} |
| `memAvailableKb` | {'int': 439} |
| `memTotalKb` | {'int': 439} |
| `otherPssKb` | {'int': 439} |
| `processes` | {'int': 439} |
| `pssFallbackProcesses` | {'int': 439} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
