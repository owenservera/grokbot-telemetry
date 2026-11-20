# sandbox_telemetry_parse — 2026-11-20 13:01:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1724331 lines=3822
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3811 |
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
| `chromeBrowserPssKb` | {'int': 3811} |
| `chromeGpuPssKb` | {'int': 3811} |
| `chromeOtherPssKb` | {'int': 3811} |
| `chromeProcesses` | {'int': 3811} |
| `chromeProfiles` | {'int': 3811} |
| `chromeRendererMaxPssKb` | {'int': 3811} |
| `chromeRendererPssKb` | {'int': 3811} |
| `chromeRenderers` | {'int': 3811} |
| `chromeTabs` | {'int': 3811} |
| `chromeTabsProbedProfiles` | {'int': 3811} |
| `chromeUtilityPssKb` | {'int': 3811} |
| `desktopPssKb` | {'int': 3811} |
| `hostPssKb` | {'int': 3811} |
| `kind` | {'str': 3811} |
| `memAvailableKb` | {'int': 3811} |
| `memTotalKb` | {'int': 3811} |
| `otherPssKb` | {'int': 3811} |
| `processes` | {'int': 3811} |
| `pssFallbackProcesses` | {'int': 3811} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
