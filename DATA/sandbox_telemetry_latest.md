# sandbox_telemetry_parse — 2026-11-11 22:09:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1841295 lines=4077
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4068 |
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
| `chromeBrowserPssKb` | {'int': 4068} |
| `chromeGpuPssKb` | {'int': 4068} |
| `chromeOtherPssKb` | {'int': 4068} |
| `chromeProcesses` | {'int': 4068} |
| `chromeProfiles` | {'int': 4068} |
| `chromeRendererMaxPssKb` | {'int': 4068} |
| `chromeRendererPssKb` | {'int': 4068} |
| `chromeRenderers` | {'int': 4068} |
| `chromeTabs` | {'int': 4068} |
| `chromeTabsProbedProfiles` | {'int': 4068} |
| `chromeUtilityPssKb` | {'int': 4068} |
| `desktopPssKb` | {'int': 4068} |
| `hostPssKb` | {'int': 4068} |
| `kind` | {'str': 4068} |
| `memAvailableKb` | {'int': 4068} |
| `memTotalKb` | {'int': 4068} |
| `otherPssKb` | {'int': 4068} |
| `processes` | {'int': 4068} |
| `pssFallbackProcesses` | {'int': 4068} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
