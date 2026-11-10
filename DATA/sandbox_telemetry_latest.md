# sandbox_telemetry_parse — 2026-11-10 16:20:21 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1217290 lines=2698
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2689 |
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
| `chromeBrowserPssKb` | {'int': 2689} |
| `chromeGpuPssKb` | {'int': 2689} |
| `chromeOtherPssKb` | {'int': 2689} |
| `chromeProcesses` | {'int': 2689} |
| `chromeProfiles` | {'int': 2689} |
| `chromeRendererMaxPssKb` | {'int': 2689} |
| `chromeRendererPssKb` | {'int': 2689} |
| `chromeRenderers` | {'int': 2689} |
| `chromeTabs` | {'int': 2689} |
| `chromeTabsProbedProfiles` | {'int': 2689} |
| `chromeUtilityPssKb` | {'int': 2689} |
| `desktopPssKb` | {'int': 2689} |
| `hostPssKb` | {'int': 2689} |
| `kind` | {'str': 2689} |
| `memAvailableKb` | {'int': 2689} |
| `memTotalKb` | {'int': 2689} |
| `otherPssKb` | {'int': 2689} |
| `processes` | {'int': 2689} |
| `pssFallbackProcesses` | {'int': 2689} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
