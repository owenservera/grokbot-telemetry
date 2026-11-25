# sandbox_telemetry_parse — 2026-11-25 22:42:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2955491 lines=6547
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6532 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 6532} |
| `chromeGpuPssKb` | {'int': 6532} |
| `chromeOtherPssKb` | {'int': 6532} |
| `chromeProcesses` | {'int': 6532} |
| `chromeProfiles` | {'int': 6532} |
| `chromeRendererMaxPssKb` | {'int': 6532} |
| `chromeRendererPssKb` | {'int': 6532} |
| `chromeRenderers` | {'int': 6532} |
| `chromeTabs` | {'int': 6532} |
| `chromeTabsProbedProfiles` | {'int': 6532} |
| `chromeUtilityPssKb` | {'int': 6532} |
| `desktopPssKb` | {'int': 6532} |
| `hostPssKb` | {'int': 6532} |
| `kind` | {'str': 6532} |
| `memAvailableKb` | {'int': 6532} |
| `memTotalKb` | {'int': 6532} |
| `otherPssKb` | {'int': 6532} |
| `processes` | {'int': 6532} |
| `pssFallbackProcesses` | {'int': 6532} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
