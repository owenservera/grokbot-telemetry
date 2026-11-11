# sandbox_telemetry_parse — 2026-11-11 09:50:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1570638 lines=3479
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3470 |
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
| `chromeBrowserPssKb` | {'int': 3470} |
| `chromeGpuPssKb` | {'int': 3470} |
| `chromeOtherPssKb` | {'int': 3470} |
| `chromeProcesses` | {'int': 3470} |
| `chromeProfiles` | {'int': 3470} |
| `chromeRendererMaxPssKb` | {'int': 3470} |
| `chromeRendererPssKb` | {'int': 3470} |
| `chromeRenderers` | {'int': 3470} |
| `chromeTabs` | {'int': 3470} |
| `chromeTabsProbedProfiles` | {'int': 3470} |
| `chromeUtilityPssKb` | {'int': 3470} |
| `desktopPssKb` | {'int': 3470} |
| `hostPssKb` | {'int': 3470} |
| `kind` | {'str': 3470} |
| `memAvailableKb` | {'int': 3470} |
| `memTotalKb` | {'int': 3470} |
| `otherPssKb` | {'int': 3470} |
| `processes` | {'int': 3470} |
| `pssFallbackProcesses` | {'int': 3470} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
