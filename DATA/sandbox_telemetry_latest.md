# sandbox_telemetry_parse — 2026-11-19 16:48:21 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1357571 lines=3011
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3000 |
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
| `chromeBrowserPssKb` | {'int': 3000} |
| `chromeGpuPssKb` | {'int': 3000} |
| `chromeOtherPssKb` | {'int': 3000} |
| `chromeProcesses` | {'int': 3000} |
| `chromeProfiles` | {'int': 3000} |
| `chromeRendererMaxPssKb` | {'int': 3000} |
| `chromeRendererPssKb` | {'int': 3000} |
| `chromeRenderers` | {'int': 3000} |
| `chromeTabs` | {'int': 3000} |
| `chromeTabsProbedProfiles` | {'int': 3000} |
| `chromeUtilityPssKb` | {'int': 3000} |
| `desktopPssKb` | {'int': 3000} |
| `hostPssKb` | {'int': 3000} |
| `kind` | {'str': 3000} |
| `memAvailableKb` | {'int': 3000} |
| `memTotalKb` | {'int': 3000} |
| `otherPssKb` | {'int': 3000} |
| `processes` | {'int': 3000} |
| `pssFallbackProcesses` | {'int': 3000} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
