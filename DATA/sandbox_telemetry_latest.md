# sandbox_telemetry_parse — 2026-11-20 03:40:36 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1560210 lines=3459
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3448 |
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
| `chromeBrowserPssKb` | {'int': 3448} |
| `chromeGpuPssKb` | {'int': 3448} |
| `chromeOtherPssKb` | {'int': 3448} |
| `chromeProcesses` | {'int': 3448} |
| `chromeProfiles` | {'int': 3448} |
| `chromeRendererMaxPssKb` | {'int': 3448} |
| `chromeRendererPssKb` | {'int': 3448} |
| `chromeRenderers` | {'int': 3448} |
| `chromeTabs` | {'int': 3448} |
| `chromeTabsProbedProfiles` | {'int': 3448} |
| `chromeUtilityPssKb` | {'int': 3448} |
| `desktopPssKb` | {'int': 3448} |
| `hostPssKb` | {'int': 3448} |
| `kind` | {'str': 3448} |
| `memAvailableKb` | {'int': 3448} |
| `memTotalKb` | {'int': 3448} |
| `otherPssKb` | {'int': 3448} |
| `processes` | {'int': 3448} |
| `pssFallbackProcesses` | {'int': 3448} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
