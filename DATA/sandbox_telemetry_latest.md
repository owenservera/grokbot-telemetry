# sandbox_telemetry_parse — 2026-11-19 06:28:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1152940 lines=2557
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2548 |
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
| `chromeBrowserPssKb` | {'int': 2548} |
| `chromeGpuPssKb` | {'int': 2548} |
| `chromeOtherPssKb` | {'int': 2548} |
| `chromeProcesses` | {'int': 2548} |
| `chromeProfiles` | {'int': 2548} |
| `chromeRendererMaxPssKb` | {'int': 2548} |
| `chromeRendererPssKb` | {'int': 2548} |
| `chromeRenderers` | {'int': 2548} |
| `chromeTabs` | {'int': 2548} |
| `chromeTabsProbedProfiles` | {'int': 2548} |
| `chromeUtilityPssKb` | {'int': 2548} |
| `desktopPssKb` | {'int': 2548} |
| `hostPssKb` | {'int': 2548} |
| `kind` | {'str': 2548} |
| `memAvailableKb` | {'int': 2548} |
| `memTotalKb` | {'int': 2548} |
| `otherPssKb` | {'int': 2548} |
| `processes` | {'int': 2548} |
| `pssFallbackProcesses` | {'int': 2548} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
