# sandbox_telemetry_parse — 2026-11-07 12:05:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=453027 lines=1009
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1000 |
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
| `chromeBrowserPssKb` | {'int': 1000} |
| `chromeGpuPssKb` | {'int': 1000} |
| `chromeOtherPssKb` | {'int': 1000} |
| `chromeProcesses` | {'int': 1000} |
| `chromeProfiles` | {'int': 1000} |
| `chromeRendererMaxPssKb` | {'int': 1000} |
| `chromeRendererPssKb` | {'int': 1000} |
| `chromeRenderers` | {'int': 1000} |
| `chromeTabs` | {'int': 1000} |
| `chromeTabsProbedProfiles` | {'int': 1000} |
| `chromeUtilityPssKb` | {'int': 1000} |
| `desktopPssKb` | {'int': 1000} |
| `hostPssKb` | {'int': 1000} |
| `kind` | {'str': 1000} |
| `memAvailableKb` | {'int': 1000} |
| `memTotalKb` | {'int': 1000} |
| `otherPssKb` | {'int': 1000} |
| `processes` | {'int': 1000} |
| `pssFallbackProcesses` | {'int': 1000} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
