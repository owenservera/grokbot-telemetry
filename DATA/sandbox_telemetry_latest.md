# sandbox_telemetry_parse — 2026-11-26 14:10:54 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3284389 lines=7274
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7259 |
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
| `chromeBrowserPssKb` | {'int': 7259} |
| `chromeGpuPssKb` | {'int': 7259} |
| `chromeOtherPssKb` | {'int': 7259} |
| `chromeProcesses` | {'int': 7259} |
| `chromeProfiles` | {'int': 7259} |
| `chromeRendererMaxPssKb` | {'int': 7259} |
| `chromeRendererPssKb` | {'int': 7259} |
| `chromeRenderers` | {'int': 7259} |
| `chromeTabs` | {'int': 7259} |
| `chromeTabsProbedProfiles` | {'int': 7259} |
| `chromeUtilityPssKb` | {'int': 7259} |
| `desktopPssKb` | {'int': 7259} |
| `hostPssKb` | {'int': 7259} |
| `kind` | {'str': 7259} |
| `memAvailableKb` | {'int': 7259} |
| `memTotalKb` | {'int': 7259} |
| `otherPssKb` | {'int': 7259} |
| `processes` | {'int': 7259} |
| `pssFallbackProcesses` | {'int': 7259} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
