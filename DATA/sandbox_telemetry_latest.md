# sandbox_telemetry_parse — 2026-11-25 03:11:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2565682 lines=5685
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5670 |
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
| `chromeBrowserPssKb` | {'int': 5670} |
| `chromeGpuPssKb` | {'int': 5670} |
| `chromeOtherPssKb` | {'int': 5670} |
| `chromeProcesses` | {'int': 5670} |
| `chromeProfiles` | {'int': 5670} |
| `chromeRendererMaxPssKb` | {'int': 5670} |
| `chromeRendererPssKb` | {'int': 5670} |
| `chromeRenderers` | {'int': 5670} |
| `chromeTabs` | {'int': 5670} |
| `chromeTabsProbedProfiles` | {'int': 5670} |
| `chromeUtilityPssKb` | {'int': 5670} |
| `desktopPssKb` | {'int': 5670} |
| `hostPssKb` | {'int': 5670} |
| `kind` | {'str': 5670} |
| `memAvailableKb` | {'int': 5670} |
| `memTotalKb` | {'int': 5670} |
| `otherPssKb` | {'int': 5670} |
| `processes` | {'int': 5670} |
| `pssFallbackProcesses` | {'int': 5670} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
