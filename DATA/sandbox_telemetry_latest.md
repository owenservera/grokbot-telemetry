# sandbox_telemetry_parse — 2026-11-09 14:38:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=700928 lines=1557
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1548 |
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
| `chromeBrowserPssKb` | {'int': 1548} |
| `chromeGpuPssKb` | {'int': 1548} |
| `chromeOtherPssKb` | {'int': 1548} |
| `chromeProcesses` | {'int': 1548} |
| `chromeProfiles` | {'int': 1548} |
| `chromeRendererMaxPssKb` | {'int': 1548} |
| `chromeRendererPssKb` | {'int': 1548} |
| `chromeRenderers` | {'int': 1548} |
| `chromeTabs` | {'int': 1548} |
| `chromeTabsProbedProfiles` | {'int': 1548} |
| `chromeUtilityPssKb` | {'int': 1548} |
| `desktopPssKb` | {'int': 1548} |
| `hostPssKb` | {'int': 1548} |
| `kind` | {'str': 1548} |
| `memAvailableKb` | {'int': 1548} |
| `memTotalKb` | {'int': 1548} |
| `otherPssKb` | {'int': 1548} |
| `processes` | {'int': 1548} |
| `pssFallbackProcesses` | {'int': 1548} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
