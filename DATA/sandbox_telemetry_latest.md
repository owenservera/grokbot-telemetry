# sandbox_telemetry_parse — 2026-11-26 15:32:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3313335 lines=7338
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7323 |
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
| `chromeBrowserPssKb` | {'int': 7323} |
| `chromeGpuPssKb` | {'int': 7323} |
| `chromeOtherPssKb` | {'int': 7323} |
| `chromeProcesses` | {'int': 7323} |
| `chromeProfiles` | {'int': 7323} |
| `chromeRendererMaxPssKb` | {'int': 7323} |
| `chromeRendererPssKb` | {'int': 7323} |
| `chromeRenderers` | {'int': 7323} |
| `chromeTabs` | {'int': 7323} |
| `chromeTabsProbedProfiles` | {'int': 7323} |
| `chromeUtilityPssKb` | {'int': 7323} |
| `desktopPssKb` | {'int': 7323} |
| `hostPssKb` | {'int': 7323} |
| `kind` | {'str': 7323} |
| `memAvailableKb` | {'int': 7323} |
| `memTotalKb` | {'int': 7323} |
| `otherPssKb` | {'int': 7323} |
| `processes` | {'int': 7323} |
| `pssFallbackProcesses` | {'int': 7323} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
