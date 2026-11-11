# sandbox_telemetry_parse — 2026-11-11 01:36:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1419168 lines=3144
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3135 |
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
| `chromeBrowserPssKb` | {'int': 3135} |
| `chromeGpuPssKb` | {'int': 3135} |
| `chromeOtherPssKb` | {'int': 3135} |
| `chromeProcesses` | {'int': 3135} |
| `chromeProfiles` | {'int': 3135} |
| `chromeRendererMaxPssKb` | {'int': 3135} |
| `chromeRendererPssKb` | {'int': 3135} |
| `chromeRenderers` | {'int': 3135} |
| `chromeTabs` | {'int': 3135} |
| `chromeTabsProbedProfiles` | {'int': 3135} |
| `chromeUtilityPssKb` | {'int': 3135} |
| `desktopPssKb` | {'int': 3135} |
| `hostPssKb` | {'int': 3135} |
| `kind` | {'str': 3135} |
| `memAvailableKb` | {'int': 3135} |
| `memTotalKb` | {'int': 3135} |
| `otherPssKb` | {'int': 3135} |
| `processes` | {'int': 3135} |
| `pssFallbackProcesses` | {'int': 3135} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
