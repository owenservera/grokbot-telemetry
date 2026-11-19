# sandbox_telemetry_parse — 2026-11-19 11:13:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1246549 lines=2764
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2755 |
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
| `chromeBrowserPssKb` | {'int': 2755} |
| `chromeGpuPssKb` | {'int': 2755} |
| `chromeOtherPssKb` | {'int': 2755} |
| `chromeProcesses` | {'int': 2755} |
| `chromeProfiles` | {'int': 2755} |
| `chromeRendererMaxPssKb` | {'int': 2755} |
| `chromeRendererPssKb` | {'int': 2755} |
| `chromeRenderers` | {'int': 2755} |
| `chromeTabs` | {'int': 2755} |
| `chromeTabsProbedProfiles` | {'int': 2755} |
| `chromeUtilityPssKb` | {'int': 2755} |
| `desktopPssKb` | {'int': 2755} |
| `hostPssKb` | {'int': 2755} |
| `kind` | {'str': 2755} |
| `memAvailableKb` | {'int': 2755} |
| `memTotalKb` | {'int': 2755} |
| `otherPssKb` | {'int': 2755} |
| `processes` | {'int': 2755} |
| `pssFallbackProcesses` | {'int': 2755} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
