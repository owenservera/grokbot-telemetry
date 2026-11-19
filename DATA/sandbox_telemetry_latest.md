# sandbox_telemetry_parse — 2026-11-19 18:26:37 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1391082 lines=3085
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3074 |
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
| `chromeBrowserPssKb` | {'int': 3074} |
| `chromeGpuPssKb` | {'int': 3074} |
| `chromeOtherPssKb` | {'int': 3074} |
| `chromeProcesses` | {'int': 3074} |
| `chromeProfiles` | {'int': 3074} |
| `chromeRendererMaxPssKb` | {'int': 3074} |
| `chromeRendererPssKb` | {'int': 3074} |
| `chromeRenderers` | {'int': 3074} |
| `chromeTabs` | {'int': 3074} |
| `chromeTabsProbedProfiles` | {'int': 3074} |
| `chromeUtilityPssKb` | {'int': 3074} |
| `desktopPssKb` | {'int': 3074} |
| `hostPssKb` | {'int': 3074} |
| `kind` | {'str': 3074} |
| `memAvailableKb` | {'int': 3074} |
| `memTotalKb` | {'int': 3074} |
| `otherPssKb` | {'int': 3074} |
| `processes` | {'int': 3074} |
| `pssFallbackProcesses` | {'int': 3074} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
