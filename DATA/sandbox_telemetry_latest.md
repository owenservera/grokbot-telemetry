# sandbox_telemetry_parse — 2026-11-11 01:09:37 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1410574 lines=3125
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3116 |
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
| `chromeBrowserPssKb` | {'int': 3116} |
| `chromeGpuPssKb` | {'int': 3116} |
| `chromeOtherPssKb` | {'int': 3116} |
| `chromeProcesses` | {'int': 3116} |
| `chromeProfiles` | {'int': 3116} |
| `chromeRendererMaxPssKb` | {'int': 3116} |
| `chromeRendererPssKb` | {'int': 3116} |
| `chromeRenderers` | {'int': 3116} |
| `chromeTabs` | {'int': 3116} |
| `chromeTabsProbedProfiles` | {'int': 3116} |
| `chromeUtilityPssKb` | {'int': 3116} |
| `desktopPssKb` | {'int': 3116} |
| `hostPssKb` | {'int': 3116} |
| `kind` | {'str': 3116} |
| `memAvailableKb` | {'int': 3116} |
| `memTotalKb` | {'int': 3116} |
| `otherPssKb` | {'int': 3116} |
| `processes` | {'int': 3116} |
| `pssFallbackProcesses` | {'int': 3116} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
