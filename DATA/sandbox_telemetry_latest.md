# sandbox_telemetry_parse — 2026-11-26 13:44:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3276701 lines=7257
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7242 |
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
| `chromeBrowserPssKb` | {'int': 7242} |
| `chromeGpuPssKb` | {'int': 7242} |
| `chromeOtherPssKb` | {'int': 7242} |
| `chromeProcesses` | {'int': 7242} |
| `chromeProfiles` | {'int': 7242} |
| `chromeRendererMaxPssKb` | {'int': 7242} |
| `chromeRendererPssKb` | {'int': 7242} |
| `chromeRenderers` | {'int': 7242} |
| `chromeTabs` | {'int': 7242} |
| `chromeTabsProbedProfiles` | {'int': 7242} |
| `chromeUtilityPssKb` | {'int': 7242} |
| `desktopPssKb` | {'int': 7242} |
| `hostPssKb` | {'int': 7242} |
| `kind` | {'str': 7242} |
| `memAvailableKb` | {'int': 7242} |
| `memTotalKb` | {'int': 7242} |
| `otherPssKb` | {'int': 7242} |
| `processes` | {'int': 7242} |
| `pssFallbackProcesses` | {'int': 7242} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
