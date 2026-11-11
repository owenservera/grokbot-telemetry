# sandbox_telemetry_parse — 2026-11-11 11:12:54 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1601423 lines=3547
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3538 |
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
| `chromeBrowserPssKb` | {'int': 3538} |
| `chromeGpuPssKb` | {'int': 3538} |
| `chromeOtherPssKb` | {'int': 3538} |
| `chromeProcesses` | {'int': 3538} |
| `chromeProfiles` | {'int': 3538} |
| `chromeRendererMaxPssKb` | {'int': 3538} |
| `chromeRendererPssKb` | {'int': 3538} |
| `chromeRenderers` | {'int': 3538} |
| `chromeTabs` | {'int': 3538} |
| `chromeTabsProbedProfiles` | {'int': 3538} |
| `chromeUtilityPssKb` | {'int': 3538} |
| `desktopPssKb` | {'int': 3538} |
| `hostPssKb` | {'int': 3538} |
| `kind` | {'str': 3538} |
| `memAvailableKb` | {'int': 3538} |
| `memTotalKb` | {'int': 3538} |
| `otherPssKb` | {'int': 3538} |
| `processes` | {'int': 3538} |
| `pssFallbackProcesses` | {'int': 3538} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
