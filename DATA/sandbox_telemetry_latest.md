# sandbox_telemetry_parse — 2026-11-26 14:31:33 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3292079 lines=7291
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7276 |
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
| `chromeBrowserPssKb` | {'int': 7276} |
| `chromeGpuPssKb` | {'int': 7276} |
| `chromeOtherPssKb` | {'int': 7276} |
| `chromeProcesses` | {'int': 7276} |
| `chromeProfiles` | {'int': 7276} |
| `chromeRendererMaxPssKb` | {'int': 7276} |
| `chromeRendererPssKb` | {'int': 7276} |
| `chromeRenderers` | {'int': 7276} |
| `chromeTabs` | {'int': 7276} |
| `chromeTabsProbedProfiles` | {'int': 7276} |
| `chromeUtilityPssKb` | {'int': 7276} |
| `desktopPssKb` | {'int': 7276} |
| `hostPssKb` | {'int': 7276} |
| `kind` | {'str': 7276} |
| `memAvailableKb` | {'int': 7276} |
| `memTotalKb` | {'int': 7276} |
| `otherPssKb` | {'int': 7276} |
| `processes` | {'int': 7276} |
| `pssFallbackProcesses` | {'int': 7276} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
