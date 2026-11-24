# sandbox_telemetry_parse — 2026-11-24 01:07:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2066749 lines=4582
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4567 |
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
| `chromeBrowserPssKb` | {'int': 4567} |
| `chromeGpuPssKb` | {'int': 4567} |
| `chromeOtherPssKb` | {'int': 4567} |
| `chromeProcesses` | {'int': 4567} |
| `chromeProfiles` | {'int': 4567} |
| `chromeRendererMaxPssKb` | {'int': 4567} |
| `chromeRendererPssKb` | {'int': 4567} |
| `chromeRenderers` | {'int': 4567} |
| `chromeTabs` | {'int': 4567} |
| `chromeTabsProbedProfiles` | {'int': 4567} |
| `chromeUtilityPssKb` | {'int': 4567} |
| `desktopPssKb` | {'int': 4567} |
| `hostPssKb` | {'int': 4567} |
| `kind` | {'str': 4567} |
| `memAvailableKb` | {'int': 4567} |
| `memTotalKb` | {'int': 4567} |
| `otherPssKb` | {'int': 4567} |
| `processes` | {'int': 4567} |
| `pssFallbackProcesses` | {'int': 4567} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
