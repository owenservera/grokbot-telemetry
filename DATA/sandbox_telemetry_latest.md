# sandbox_telemetry_parse — 2026-11-20 03:36:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1558854 lines=3456
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3445 |
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
| `chromeBrowserPssKb` | {'int': 3445} |
| `chromeGpuPssKb` | {'int': 3445} |
| `chromeOtherPssKb` | {'int': 3445} |
| `chromeProcesses` | {'int': 3445} |
| `chromeProfiles` | {'int': 3445} |
| `chromeRendererMaxPssKb` | {'int': 3445} |
| `chromeRendererPssKb` | {'int': 3445} |
| `chromeRenderers` | {'int': 3445} |
| `chromeTabs` | {'int': 3445} |
| `chromeTabsProbedProfiles` | {'int': 3445} |
| `chromeUtilityPssKb` | {'int': 3445} |
| `desktopPssKb` | {'int': 3445} |
| `hostPssKb` | {'int': 3445} |
| `kind` | {'str': 3445} |
| `memAvailableKb` | {'int': 3445} |
| `memTotalKb` | {'int': 3445} |
| `otherPssKb` | {'int': 3445} |
| `processes` | {'int': 3445} |
| `pssFallbackProcesses` | {'int': 3445} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
