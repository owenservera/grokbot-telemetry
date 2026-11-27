# sandbox_telemetry_parse — 2026-11-27 08:10:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=320410 lines=715
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 707 |
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
| `chromeBrowserPssKb` | {'int': 707} |
| `chromeGpuPssKb` | {'int': 707} |
| `chromeOtherPssKb` | {'int': 707} |
| `chromeProcesses` | {'int': 707} |
| `chromeProfiles` | {'int': 707} |
| `chromeRendererMaxPssKb` | {'int': 707} |
| `chromeRendererPssKb` | {'int': 707} |
| `chromeRenderers` | {'int': 707} |
| `chromeTabs` | {'int': 707} |
| `chromeTabsProbedProfiles` | {'int': 707} |
| `chromeUtilityPssKb` | {'int': 707} |
| `desktopPssKb` | {'int': 707} |
| `hostPssKb` | {'int': 707} |
| `kind` | {'str': 707} |
| `memAvailableKb` | {'int': 707} |
| `memTotalKb` | {'int': 707} |
| `otherPssKb` | {'int': 707} |
| `processes` | {'int': 707} |
| `pssFallbackProcesses` | {'int': 707} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
