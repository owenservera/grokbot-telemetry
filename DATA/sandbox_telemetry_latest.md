# sandbox_telemetry_parse — 2026-11-20 09:40:13 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1660569 lines=3681
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3670 |
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
| `chromeBrowserPssKb` | {'int': 3670} |
| `chromeGpuPssKb` | {'int': 3670} |
| `chromeOtherPssKb` | {'int': 3670} |
| `chromeProcesses` | {'int': 3670} |
| `chromeProfiles` | {'int': 3670} |
| `chromeRendererMaxPssKb` | {'int': 3670} |
| `chromeRendererPssKb` | {'int': 3670} |
| `chromeRenderers` | {'int': 3670} |
| `chromeTabs` | {'int': 3670} |
| `chromeTabsProbedProfiles` | {'int': 3670} |
| `chromeUtilityPssKb` | {'int': 3670} |
| `desktopPssKb` | {'int': 3670} |
| `hostPssKb` | {'int': 3670} |
| `kind` | {'str': 3670} |
| `memAvailableKb` | {'int': 3670} |
| `memTotalKb` | {'int': 3670} |
| `otherPssKb` | {'int': 3670} |
| `processes` | {'int': 3670} |
| `pssFallbackProcesses` | {'int': 3670} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
