# sandbox_telemetry_parse — 2026-11-25 06:23:33 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2628536 lines=5824
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5809 |
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
| `chromeBrowserPssKb` | {'int': 5809} |
| `chromeGpuPssKb` | {'int': 5809} |
| `chromeOtherPssKb` | {'int': 5809} |
| `chromeProcesses` | {'int': 5809} |
| `chromeProfiles` | {'int': 5809} |
| `chromeRendererMaxPssKb` | {'int': 5809} |
| `chromeRendererPssKb` | {'int': 5809} |
| `chromeRenderers` | {'int': 5809} |
| `chromeTabs` | {'int': 5809} |
| `chromeTabsProbedProfiles` | {'int': 5809} |
| `chromeUtilityPssKb` | {'int': 5809} |
| `desktopPssKb` | {'int': 5809} |
| `hostPssKb` | {'int': 5809} |
| `kind` | {'str': 5809} |
| `memAvailableKb` | {'int': 5809} |
| `memTotalKb` | {'int': 5809} |
| `otherPssKb` | {'int': 5809} |
| `processes` | {'int': 5809} |
| `pssFallbackProcesses` | {'int': 5809} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
