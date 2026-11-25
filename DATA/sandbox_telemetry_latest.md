# sandbox_telemetry_parse — 2026-11-25 01:00:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2528162 lines=5602
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5587 |
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
| `chromeBrowserPssKb` | {'int': 5587} |
| `chromeGpuPssKb` | {'int': 5587} |
| `chromeOtherPssKb` | {'int': 5587} |
| `chromeProcesses` | {'int': 5587} |
| `chromeProfiles` | {'int': 5587} |
| `chromeRendererMaxPssKb` | {'int': 5587} |
| `chromeRendererPssKb` | {'int': 5587} |
| `chromeRenderers` | {'int': 5587} |
| `chromeTabs` | {'int': 5587} |
| `chromeTabsProbedProfiles` | {'int': 5587} |
| `chromeUtilityPssKb` | {'int': 5587} |
| `desktopPssKb` | {'int': 5587} |
| `hostPssKb` | {'int': 5587} |
| `kind` | {'str': 5587} |
| `memAvailableKb` | {'int': 5587} |
| `memTotalKb` | {'int': 5587} |
| `otherPssKb` | {'int': 5587} |
| `processes` | {'int': 5587} |
| `pssFallbackProcesses` | {'int': 5587} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
