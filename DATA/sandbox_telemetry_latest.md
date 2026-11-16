# sandbox_telemetry_parse — 2026-11-16 17:36:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=61611 lines=142
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 135 |
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
| `chromeBrowserPssKb` | {'int': 135} |
| `chromeGpuPssKb` | {'int': 135} |
| `chromeOtherPssKb` | {'int': 135} |
| `chromeProcesses` | {'int': 135} |
| `chromeProfiles` | {'int': 135} |
| `chromeRendererMaxPssKb` | {'int': 135} |
| `chromeRendererPssKb` | {'int': 135} |
| `chromeRenderers` | {'int': 135} |
| `chromeTabs` | {'int': 135} |
| `chromeTabsProbedProfiles` | {'int': 135} |
| `chromeUtilityPssKb` | {'int': 135} |
| `desktopPssKb` | {'int': 135} |
| `hostPssKb` | {'int': 135} |
| `kind` | {'str': 135} |
| `memAvailableKb` | {'int': 135} |
| `memTotalKb` | {'int': 135} |
| `otherPssKb` | {'int': 135} |
| `processes` | {'int': 135} |
| `pssFallbackProcesses` | {'int': 135} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
