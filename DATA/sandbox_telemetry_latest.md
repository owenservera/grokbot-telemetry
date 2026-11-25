# sandbox_telemetry_parse — 2026-11-25 01:35:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2537654 lines=5623
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5608 |
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
| `chromeBrowserPssKb` | {'int': 5608} |
| `chromeGpuPssKb` | {'int': 5608} |
| `chromeOtherPssKb` | {'int': 5608} |
| `chromeProcesses` | {'int': 5608} |
| `chromeProfiles` | {'int': 5608} |
| `chromeRendererMaxPssKb` | {'int': 5608} |
| `chromeRendererPssKb` | {'int': 5608} |
| `chromeRenderers` | {'int': 5608} |
| `chromeTabs` | {'int': 5608} |
| `chromeTabsProbedProfiles` | {'int': 5608} |
| `chromeUtilityPssKb` | {'int': 5608} |
| `desktopPssKb` | {'int': 5608} |
| `hostPssKb` | {'int': 5608} |
| `kind` | {'str': 5608} |
| `memAvailableKb` | {'int': 5608} |
| `memTotalKb` | {'int': 5608} |
| `otherPssKb` | {'int': 5608} |
| `processes` | {'int': 5608} |
| `pssFallbackProcesses` | {'int': 5608} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
