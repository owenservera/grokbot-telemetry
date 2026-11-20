# sandbox_telemetry_parse — 2026-11-20 10:43:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1680471 lines=3725
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3714 |
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
| `chromeBrowserPssKb` | {'int': 3714} |
| `chromeGpuPssKb` | {'int': 3714} |
| `chromeOtherPssKb` | {'int': 3714} |
| `chromeProcesses` | {'int': 3714} |
| `chromeProfiles` | {'int': 3714} |
| `chromeRendererMaxPssKb` | {'int': 3714} |
| `chromeRendererPssKb` | {'int': 3714} |
| `chromeRenderers` | {'int': 3714} |
| `chromeTabs` | {'int': 3714} |
| `chromeTabsProbedProfiles` | {'int': 3714} |
| `chromeUtilityPssKb` | {'int': 3714} |
| `desktopPssKb` | {'int': 3714} |
| `hostPssKb` | {'int': 3714} |
| `kind` | {'str': 3714} |
| `memAvailableKb` | {'int': 3714} |
| `memTotalKb` | {'int': 3714} |
| `otherPssKb` | {'int': 3714} |
| `processes` | {'int': 3714} |
| `pssFallbackProcesses` | {'int': 3714} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
