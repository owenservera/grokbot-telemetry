# sandbox_telemetry_parse — 2026-11-10 23:29:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1375722 lines=3048
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3039 |
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
| `chromeBrowserPssKb` | {'int': 3039} |
| `chromeGpuPssKb` | {'int': 3039} |
| `chromeOtherPssKb` | {'int': 3039} |
| `chromeProcesses` | {'int': 3039} |
| `chromeProfiles` | {'int': 3039} |
| `chromeRendererMaxPssKb` | {'int': 3039} |
| `chromeRendererPssKb` | {'int': 3039} |
| `chromeRenderers` | {'int': 3039} |
| `chromeTabs` | {'int': 3039} |
| `chromeTabsProbedProfiles` | {'int': 3039} |
| `chromeUtilityPssKb` | {'int': 3039} |
| `desktopPssKb` | {'int': 3039} |
| `hostPssKb` | {'int': 3039} |
| `kind` | {'str': 3039} |
| `memAvailableKb` | {'int': 3039} |
| `memTotalKb` | {'int': 3039} |
| `otherPssKb` | {'int': 3039} |
| `processes` | {'int': 3039} |
| `pssFallbackProcesses` | {'int': 3039} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
