# sandbox_telemetry_parse — 2026-11-11 08:10:26 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1537171 lines=3404
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3395 |
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
| `chromeBrowserPssKb` | {'int': 3395} |
| `chromeGpuPssKb` | {'int': 3395} |
| `chromeOtherPssKb` | {'int': 3395} |
| `chromeProcesses` | {'int': 3395} |
| `chromeProfiles` | {'int': 3395} |
| `chromeRendererMaxPssKb` | {'int': 3395} |
| `chromeRendererPssKb` | {'int': 3395} |
| `chromeRenderers` | {'int': 3395} |
| `chromeTabs` | {'int': 3395} |
| `chromeTabsProbedProfiles` | {'int': 3395} |
| `chromeUtilityPssKb` | {'int': 3395} |
| `desktopPssKb` | {'int': 3395} |
| `hostPssKb` | {'int': 3395} |
| `kind` | {'str': 3395} |
| `memAvailableKb` | {'int': 3395} |
| `memTotalKb` | {'int': 3395} |
| `otherPssKb` | {'int': 3395} |
| `processes` | {'int': 3395} |
| `pssFallbackProcesses` | {'int': 3395} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
