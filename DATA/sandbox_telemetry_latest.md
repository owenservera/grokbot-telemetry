# sandbox_telemetry_parse — 2026-11-26 04:05:13 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3062238 lines=6783
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6768 |
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
| `chromeBrowserPssKb` | {'int': 6768} |
| `chromeGpuPssKb` | {'int': 6768} |
| `chromeOtherPssKb` | {'int': 6768} |
| `chromeProcesses` | {'int': 6768} |
| `chromeProfiles` | {'int': 6768} |
| `chromeRendererMaxPssKb` | {'int': 6768} |
| `chromeRendererPssKb` | {'int': 6768} |
| `chromeRenderers` | {'int': 6768} |
| `chromeTabs` | {'int': 6768} |
| `chromeTabsProbedProfiles` | {'int': 6768} |
| `chromeUtilityPssKb` | {'int': 6768} |
| `desktopPssKb` | {'int': 6768} |
| `hostPssKb` | {'int': 6768} |
| `kind` | {'str': 6768} |
| `memAvailableKb` | {'int': 6768} |
| `memTotalKb` | {'int': 6768} |
| `otherPssKb` | {'int': 6768} |
| `processes` | {'int': 6768} |
| `pssFallbackProcesses` | {'int': 6768} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
