# sandbox_telemetry_parse — 2026-11-11 03:18:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1448548 lines=3209
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3200 |
| `egress_tunnel` | 5 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 3200} |
| `chromeGpuPssKb` | {'int': 3200} |
| `chromeOtherPssKb` | {'int': 3200} |
| `chromeProcesses` | {'int': 3200} |
| `chromeProfiles` | {'int': 3200} |
| `chromeRendererMaxPssKb` | {'int': 3200} |
| `chromeRendererPssKb` | {'int': 3200} |
| `chromeRenderers` | {'int': 3200} |
| `chromeTabs` | {'int': 3200} |
| `chromeTabsProbedProfiles` | {'int': 3200} |
| `chromeUtilityPssKb` | {'int': 3200} |
| `desktopPssKb` | {'int': 3200} |
| `hostPssKb` | {'int': 3200} |
| `kind` | {'str': 3200} |
| `memAvailableKb` | {'int': 3200} |
| `memTotalKb` | {'int': 3200} |
| `otherPssKb` | {'int': 3200} |
| `processes` | {'int': 3200} |
| `pssFallbackProcesses` | {'int': 3200} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
