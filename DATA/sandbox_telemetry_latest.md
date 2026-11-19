# sandbox_telemetry_parse — 2026-11-19 02:23:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1079683 lines=2395
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2386 |
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
| `chromeBrowserPssKb` | {'int': 2386} |
| `chromeGpuPssKb` | {'int': 2386} |
| `chromeOtherPssKb` | {'int': 2386} |
| `chromeProcesses` | {'int': 2386} |
| `chromeProfiles` | {'int': 2386} |
| `chromeRendererMaxPssKb` | {'int': 2386} |
| `chromeRendererPssKb` | {'int': 2386} |
| `chromeRenderers` | {'int': 2386} |
| `chromeTabs` | {'int': 2386} |
| `chromeTabsProbedProfiles` | {'int': 2386} |
| `chromeUtilityPssKb` | {'int': 2386} |
| `desktopPssKb` | {'int': 2386} |
| `hostPssKb` | {'int': 2386} |
| `kind` | {'str': 2386} |
| `memAvailableKb` | {'int': 2386} |
| `memTotalKb` | {'int': 2386} |
| `otherPssKb` | {'int': 2386} |
| `processes` | {'int': 2386} |
| `pssFallbackProcesses` | {'int': 2386} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
