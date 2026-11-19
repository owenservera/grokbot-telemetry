# sandbox_telemetry_parse — 2026-11-19 17:10:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1366172 lines=3030
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3019 |
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
| `chromeBrowserPssKb` | {'int': 3019} |
| `chromeGpuPssKb` | {'int': 3019} |
| `chromeOtherPssKb` | {'int': 3019} |
| `chromeProcesses` | {'int': 3019} |
| `chromeProfiles` | {'int': 3019} |
| `chromeRendererMaxPssKb` | {'int': 3019} |
| `chromeRendererPssKb` | {'int': 3019} |
| `chromeRenderers` | {'int': 3019} |
| `chromeTabs` | {'int': 3019} |
| `chromeTabsProbedProfiles` | {'int': 3019} |
| `chromeUtilityPssKb` | {'int': 3019} |
| `desktopPssKb` | {'int': 3019} |
| `hostPssKb` | {'int': 3019} |
| `kind` | {'str': 3019} |
| `memAvailableKb` | {'int': 3019} |
| `memTotalKb` | {'int': 3019} |
| `otherPssKb` | {'int': 3019} |
| `processes` | {'int': 3019} |
| `pssFallbackProcesses` | {'int': 3019} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
