# sandbox_telemetry_parse — 2026-11-26 10:17:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3207033 lines=7103
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7088 |
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
| `chromeBrowserPssKb` | {'int': 7088} |
| `chromeGpuPssKb` | {'int': 7088} |
| `chromeOtherPssKb` | {'int': 7088} |
| `chromeProcesses` | {'int': 7088} |
| `chromeProfiles` | {'int': 7088} |
| `chromeRendererMaxPssKb` | {'int': 7088} |
| `chromeRendererPssKb` | {'int': 7088} |
| `chromeRenderers` | {'int': 7088} |
| `chromeTabs` | {'int': 7088} |
| `chromeTabsProbedProfiles` | {'int': 7088} |
| `chromeUtilityPssKb` | {'int': 7088} |
| `desktopPssKb` | {'int': 7088} |
| `hostPssKb` | {'int': 7088} |
| `kind` | {'str': 7088} |
| `memAvailableKb` | {'int': 7088} |
| `memTotalKb` | {'int': 7088} |
| `otherPssKb` | {'int': 7088} |
| `processes` | {'int': 7088} |
| `pssFallbackProcesses` | {'int': 7088} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
