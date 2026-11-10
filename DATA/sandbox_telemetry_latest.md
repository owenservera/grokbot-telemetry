# sandbox_telemetry_parse — 2026-11-10 10:23:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1095965 lines=2430
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2421 |
| `egress_tunnel` | 5 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 2421} |
| `chromeGpuPssKb` | {'int': 2421} |
| `chromeOtherPssKb` | {'int': 2421} |
| `chromeProcesses` | {'int': 2421} |
| `chromeProfiles` | {'int': 2421} |
| `chromeRendererMaxPssKb` | {'int': 2421} |
| `chromeRendererPssKb` | {'int': 2421} |
| `chromeRenderers` | {'int': 2421} |
| `chromeTabs` | {'int': 2421} |
| `chromeTabsProbedProfiles` | {'int': 2421} |
| `chromeUtilityPssKb` | {'int': 2421} |
| `desktopPssKb` | {'int': 2421} |
| `hostPssKb` | {'int': 2421} |
| `kind` | {'str': 2421} |
| `memAvailableKb` | {'int': 2421} |
| `memTotalKb` | {'int': 2421} |
| `otherPssKb` | {'int': 2421} |
| `processes` | {'int': 2421} |
| `pssFallbackProcesses` | {'int': 2421} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
