# sandbox_telemetry_parse — 2026-11-28 18:14:21 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1000548 lines=2218
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2210 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

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
| `chromeBrowserPssKb` | {'int': 2210} |
| `chromeGpuPssKb` | {'int': 2210} |
| `chromeOtherPssKb` | {'int': 2210} |
| `chromeProcesses` | {'int': 2210} |
| `chromeProfiles` | {'int': 2210} |
| `chromeRendererMaxPssKb` | {'int': 2210} |
| `chromeRendererPssKb` | {'int': 2210} |
| `chromeRenderers` | {'int': 2210} |
| `chromeTabs` | {'int': 2210} |
| `chromeTabsProbedProfiles` | {'int': 2210} |
| `chromeUtilityPssKb` | {'int': 2210} |
| `desktopPssKb` | {'int': 2210} |
| `hostPssKb` | {'int': 2210} |
| `kind` | {'str': 2210} |
| `memAvailableKb` | {'int': 2210} |
| `memTotalKb` | {'int': 2210} |
| `otherPssKb` | {'int': 2210} |
| `processes` | {'int': 2210} |
| `pssFallbackProcesses` | {'int': 2210} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
