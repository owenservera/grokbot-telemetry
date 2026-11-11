# sandbox_telemetry_parse — 2026-11-11 12:22:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1628589 lines=3607
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3598 |
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
| `chromeBrowserPssKb` | {'int': 3598} |
| `chromeGpuPssKb` | {'int': 3598} |
| `chromeOtherPssKb` | {'int': 3598} |
| `chromeProcesses` | {'int': 3598} |
| `chromeProfiles` | {'int': 3598} |
| `chromeRendererMaxPssKb` | {'int': 3598} |
| `chromeRendererPssKb` | {'int': 3598} |
| `chromeRenderers` | {'int': 3598} |
| `chromeTabs` | {'int': 3598} |
| `chromeTabsProbedProfiles` | {'int': 3598} |
| `chromeUtilityPssKb` | {'int': 3598} |
| `desktopPssKb` | {'int': 3598} |
| `hostPssKb` | {'int': 3598} |
| `kind` | {'str': 3598} |
| `memAvailableKb` | {'int': 3598} |
| `memTotalKb` | {'int': 3598} |
| `otherPssKb` | {'int': 3598} |
| `processes` | {'int': 3598} |
| `pssFallbackProcesses` | {'int': 3598} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
