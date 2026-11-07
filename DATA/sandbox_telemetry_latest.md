# sandbox_telemetry_parse — 2026-11-07 09:23:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=396923 lines=885
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 876 |
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
| `chromeBrowserPssKb` | {'int': 876} |
| `chromeGpuPssKb` | {'int': 876} |
| `chromeOtherPssKb` | {'int': 876} |
| `chromeProcesses` | {'int': 876} |
| `chromeProfiles` | {'int': 876} |
| `chromeRendererMaxPssKb` | {'int': 876} |
| `chromeRendererPssKb` | {'int': 876} |
| `chromeRenderers` | {'int': 876} |
| `chromeTabs` | {'int': 876} |
| `chromeTabsProbedProfiles` | {'int': 876} |
| `chromeUtilityPssKb` | {'int': 876} |
| `desktopPssKb` | {'int': 876} |
| `hostPssKb` | {'int': 876} |
| `kind` | {'str': 876} |
| `memAvailableKb` | {'int': 876} |
| `memTotalKb` | {'int': 876} |
| `otherPssKb` | {'int': 876} |
| `processes` | {'int': 876} |
| `pssFallbackProcesses` | {'int': 876} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
