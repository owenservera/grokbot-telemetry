# sandbox_telemetry_parse — 2026-11-10 06:37:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1022657 lines=2268
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2259 |
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
| `chromeBrowserPssKb` | {'int': 2259} |
| `chromeGpuPssKb` | {'int': 2259} |
| `chromeOtherPssKb` | {'int': 2259} |
| `chromeProcesses` | {'int': 2259} |
| `chromeProfiles` | {'int': 2259} |
| `chromeRendererMaxPssKb` | {'int': 2259} |
| `chromeRendererPssKb` | {'int': 2259} |
| `chromeRenderers` | {'int': 2259} |
| `chromeTabs` | {'int': 2259} |
| `chromeTabsProbedProfiles` | {'int': 2259} |
| `chromeUtilityPssKb` | {'int': 2259} |
| `desktopPssKb` | {'int': 2259} |
| `hostPssKb` | {'int': 2259} |
| `kind` | {'str': 2259} |
| `memAvailableKb` | {'int': 2259} |
| `memTotalKb` | {'int': 2259} |
| `otherPssKb` | {'int': 2259} |
| `processes` | {'int': 2259} |
| `pssFallbackProcesses` | {'int': 2259} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
