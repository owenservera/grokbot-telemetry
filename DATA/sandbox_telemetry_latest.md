# sandbox_telemetry_parse — 2026-11-20 14:35:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1757356 lines=3895
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3884 |
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
| `chromeBrowserPssKb` | {'int': 3884} |
| `chromeGpuPssKb` | {'int': 3884} |
| `chromeOtherPssKb` | {'int': 3884} |
| `chromeProcesses` | {'int': 3884} |
| `chromeProfiles` | {'int': 3884} |
| `chromeRendererMaxPssKb` | {'int': 3884} |
| `chromeRendererPssKb` | {'int': 3884} |
| `chromeRenderers` | {'int': 3884} |
| `chromeTabs` | {'int': 3884} |
| `chromeTabsProbedProfiles` | {'int': 3884} |
| `chromeUtilityPssKb` | {'int': 3884} |
| `desktopPssKb` | {'int': 3884} |
| `hostPssKb` | {'int': 3884} |
| `kind` | {'str': 3884} |
| `memAvailableKb` | {'int': 3884} |
| `memTotalKb` | {'int': 3884} |
| `otherPssKb` | {'int': 3884} |
| `processes` | {'int': 3884} |
| `pssFallbackProcesses` | {'int': 3884} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
