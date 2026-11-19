# sandbox_telemetry_parse — 2026-11-19 13:36:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1293572 lines=2868
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2859 |
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
| `chromeBrowserPssKb` | {'int': 2859} |
| `chromeGpuPssKb` | {'int': 2859} |
| `chromeOtherPssKb` | {'int': 2859} |
| `chromeProcesses` | {'int': 2859} |
| `chromeProfiles` | {'int': 2859} |
| `chromeRendererMaxPssKb` | {'int': 2859} |
| `chromeRendererPssKb` | {'int': 2859} |
| `chromeRenderers` | {'int': 2859} |
| `chromeTabs` | {'int': 2859} |
| `chromeTabsProbedProfiles` | {'int': 2859} |
| `chromeUtilityPssKb` | {'int': 2859} |
| `desktopPssKb` | {'int': 2859} |
| `hostPssKb` | {'int': 2859} |
| `kind` | {'str': 2859} |
| `memAvailableKb` | {'int': 2859} |
| `memTotalKb` | {'int': 2859} |
| `otherPssKb` | {'int': 2859} |
| `processes` | {'int': 2859} |
| `pssFallbackProcesses` | {'int': 2859} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
