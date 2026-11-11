# sandbox_telemetry_parse — 2026-11-11 23:30:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1870261 lines=4141
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4132 |
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
| `chromeBrowserPssKb` | {'int': 4132} |
| `chromeGpuPssKb` | {'int': 4132} |
| `chromeOtherPssKb` | {'int': 4132} |
| `chromeProcesses` | {'int': 4132} |
| `chromeProfiles` | {'int': 4132} |
| `chromeRendererMaxPssKb` | {'int': 4132} |
| `chromeRendererPssKb` | {'int': 4132} |
| `chromeRenderers` | {'int': 4132} |
| `chromeTabs` | {'int': 4132} |
| `chromeTabsProbedProfiles` | {'int': 4132} |
| `chromeUtilityPssKb` | {'int': 4132} |
| `desktopPssKb` | {'int': 4132} |
| `hostPssKb` | {'int': 4132} |
| `kind` | {'str': 4132} |
| `memAvailableKb` | {'int': 4132} |
| `memTotalKb` | {'int': 4132} |
| `otherPssKb` | {'int': 4132} |
| `processes` | {'int': 4132} |
| `pssFallbackProcesses` | {'int': 4132} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
