# sandbox_telemetry_parse — 2026-11-19 18:29:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1392438 lines=3088
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3077 |
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
| `chromeBrowserPssKb` | {'int': 3077} |
| `chromeGpuPssKb` | {'int': 3077} |
| `chromeOtherPssKb` | {'int': 3077} |
| `chromeProcesses` | {'int': 3077} |
| `chromeProfiles` | {'int': 3077} |
| `chromeRendererMaxPssKb` | {'int': 3077} |
| `chromeRendererPssKb` | {'int': 3077} |
| `chromeRenderers` | {'int': 3077} |
| `chromeTabs` | {'int': 3077} |
| `chromeTabsProbedProfiles` | {'int': 3077} |
| `chromeUtilityPssKb` | {'int': 3077} |
| `desktopPssKb` | {'int': 3077} |
| `hostPssKb` | {'int': 3077} |
| `kind` | {'str': 3077} |
| `memAvailableKb` | {'int': 3077} |
| `memTotalKb` | {'int': 3077} |
| `otherPssKb` | {'int': 3077} |
| `processes` | {'int': 3077} |
| `pssFallbackProcesses` | {'int': 3077} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
