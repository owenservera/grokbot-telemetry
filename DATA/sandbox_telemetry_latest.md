# sandbox_telemetry_parse — 2026-11-26 10:02:23 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3200250 lines=7088
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7073 |
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
| `chromeBrowserPssKb` | {'int': 7073} |
| `chromeGpuPssKb` | {'int': 7073} |
| `chromeOtherPssKb` | {'int': 7073} |
| `chromeProcesses` | {'int': 7073} |
| `chromeProfiles` | {'int': 7073} |
| `chromeRendererMaxPssKb` | {'int': 7073} |
| `chromeRendererPssKb` | {'int': 7073} |
| `chromeRenderers` | {'int': 7073} |
| `chromeTabs` | {'int': 7073} |
| `chromeTabsProbedProfiles` | {'int': 7073} |
| `chromeUtilityPssKb` | {'int': 7073} |
| `desktopPssKb` | {'int': 7073} |
| `hostPssKb` | {'int': 7073} |
| `kind` | {'str': 7073} |
| `memAvailableKb` | {'int': 7073} |
| `memTotalKb` | {'int': 7073} |
| `otherPssKb` | {'int': 7073} |
| `processes` | {'int': 7073} |
| `pssFallbackProcesses` | {'int': 7073} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
