# sandbox_telemetry_parse — 2026-11-20 11:28:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1694484 lines=3756
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3745 |
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
| `chromeBrowserPssKb` | {'int': 3745} |
| `chromeGpuPssKb` | {'int': 3745} |
| `chromeOtherPssKb` | {'int': 3745} |
| `chromeProcesses` | {'int': 3745} |
| `chromeProfiles` | {'int': 3745} |
| `chromeRendererMaxPssKb` | {'int': 3745} |
| `chromeRendererPssKb` | {'int': 3745} |
| `chromeRenderers` | {'int': 3745} |
| `chromeTabs` | {'int': 3745} |
| `chromeTabsProbedProfiles` | {'int': 3745} |
| `chromeUtilityPssKb` | {'int': 3745} |
| `desktopPssKb` | {'int': 3745} |
| `hostPssKb` | {'int': 3745} |
| `kind` | {'str': 3745} |
| `memAvailableKb` | {'int': 3745} |
| `memTotalKb` | {'int': 3745} |
| `otherPssKb` | {'int': 3745} |
| `processes` | {'int': 3745} |
| `pssFallbackProcesses` | {'int': 3745} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
