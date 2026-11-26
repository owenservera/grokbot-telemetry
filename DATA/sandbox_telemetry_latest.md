# sandbox_telemetry_parse — 2026-11-26 08:01:57 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3154080 lines=6986
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6971 |
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
| `chromeBrowserPssKb` | {'int': 6971} |
| `chromeGpuPssKb` | {'int': 6971} |
| `chromeOtherPssKb` | {'int': 6971} |
| `chromeProcesses` | {'int': 6971} |
| `chromeProfiles` | {'int': 6971} |
| `chromeRendererMaxPssKb` | {'int': 6971} |
| `chromeRendererPssKb` | {'int': 6971} |
| `chromeRenderers` | {'int': 6971} |
| `chromeTabs` | {'int': 6971} |
| `chromeTabsProbedProfiles` | {'int': 6971} |
| `chromeUtilityPssKb` | {'int': 6971} |
| `desktopPssKb` | {'int': 6971} |
| `hostPssKb` | {'int': 6971} |
| `kind` | {'str': 6971} |
| `memAvailableKb` | {'int': 6971} |
| `memTotalKb` | {'int': 6971} |
| `otherPssKb` | {'int': 6971} |
| `processes` | {'int': 6971} |
| `pssFallbackProcesses` | {'int': 6971} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
