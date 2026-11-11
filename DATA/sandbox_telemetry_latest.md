# sandbox_telemetry_parse — 2026-11-11 05:15:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1486078 lines=3292
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3283 |
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
| `chromeBrowserPssKb` | {'int': 3283} |
| `chromeGpuPssKb` | {'int': 3283} |
| `chromeOtherPssKb` | {'int': 3283} |
| `chromeProcesses` | {'int': 3283} |
| `chromeProfiles` | {'int': 3283} |
| `chromeRendererMaxPssKb` | {'int': 3283} |
| `chromeRendererPssKb` | {'int': 3283} |
| `chromeRenderers` | {'int': 3283} |
| `chromeTabs` | {'int': 3283} |
| `chromeTabsProbedProfiles` | {'int': 3283} |
| `chromeUtilityPssKb` | {'int': 3283} |
| `desktopPssKb` | {'int': 3283} |
| `hostPssKb` | {'int': 3283} |
| `kind` | {'str': 3283} |
| `memAvailableKb` | {'int': 3283} |
| `memTotalKb` | {'int': 3283} |
| `otherPssKb` | {'int': 3283} |
| `processes` | {'int': 3283} |
| `pssFallbackProcesses` | {'int': 3283} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
