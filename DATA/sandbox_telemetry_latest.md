# sandbox_telemetry_parse — 2026-11-12 13:30:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2150365 lines=4760
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4751 |
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
| `chromeBrowserPssKb` | {'int': 4751} |
| `chromeGpuPssKb` | {'int': 4751} |
| `chromeOtherPssKb` | {'int': 4751} |
| `chromeProcesses` | {'int': 4751} |
| `chromeProfiles` | {'int': 4751} |
| `chromeRendererMaxPssKb` | {'int': 4751} |
| `chromeRendererPssKb` | {'int': 4751} |
| `chromeRenderers` | {'int': 4751} |
| `chromeTabs` | {'int': 4751} |
| `chromeTabsProbedProfiles` | {'int': 4751} |
| `chromeUtilityPssKb` | {'int': 4751} |
| `desktopPssKb` | {'int': 4751} |
| `hostPssKb` | {'int': 4751} |
| `kind` | {'str': 4751} |
| `memAvailableKb` | {'int': 4751} |
| `memTotalKb` | {'int': 4751} |
| `otherPssKb` | {'int': 4751} |
| `processes` | {'int': 4751} |
| `pssFallbackProcesses` | {'int': 4751} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
