# sandbox_telemetry_parse — 2026-11-20 11:42:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1698552 lines=3765
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3754 |
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
| `chromeBrowserPssKb` | {'int': 3754} |
| `chromeGpuPssKb` | {'int': 3754} |
| `chromeOtherPssKb` | {'int': 3754} |
| `chromeProcesses` | {'int': 3754} |
| `chromeProfiles` | {'int': 3754} |
| `chromeRendererMaxPssKb` | {'int': 3754} |
| `chromeRendererPssKb` | {'int': 3754} |
| `chromeRenderers` | {'int': 3754} |
| `chromeTabs` | {'int': 3754} |
| `chromeTabsProbedProfiles` | {'int': 3754} |
| `chromeUtilityPssKb` | {'int': 3754} |
| `desktopPssKb` | {'int': 3754} |
| `hostPssKb` | {'int': 3754} |
| `kind` | {'str': 3754} |
| `memAvailableKb` | {'int': 3754} |
| `memTotalKb` | {'int': 3754} |
| `otherPssKb` | {'int': 3754} |
| `processes` | {'int': 3754} |
| `pssFallbackProcesses` | {'int': 3754} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
