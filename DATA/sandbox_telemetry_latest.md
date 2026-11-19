# sandbox_telemetry_parse — 2026-11-19 22:11:13 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1462560 lines=3243
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3232 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3232} |
| `chromeGpuPssKb` | {'int': 3232} |
| `chromeOtherPssKb` | {'int': 3232} |
| `chromeProcesses` | {'int': 3232} |
| `chromeProfiles` | {'int': 3232} |
| `chromeRendererMaxPssKb` | {'int': 3232} |
| `chromeRendererPssKb` | {'int': 3232} |
| `chromeRenderers` | {'int': 3232} |
| `chromeTabs` | {'int': 3232} |
| `chromeTabsProbedProfiles` | {'int': 3232} |
| `chromeUtilityPssKb` | {'int': 3232} |
| `desktopPssKb` | {'int': 3232} |
| `hostPssKb` | {'int': 3232} |
| `kind` | {'str': 3232} |
| `memAvailableKb` | {'int': 3232} |
| `memTotalKb` | {'int': 3232} |
| `otherPssKb` | {'int': 3232} |
| `processes` | {'int': 3232} |
| `pssFallbackProcesses` | {'int': 3232} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
