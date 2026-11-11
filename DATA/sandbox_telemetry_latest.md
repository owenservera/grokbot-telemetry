# sandbox_telemetry_parse — 2026-11-11 17:50:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1746683 lines=3868
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3859 |
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
| `chromeBrowserPssKb` | {'int': 3859} |
| `chromeGpuPssKb` | {'int': 3859} |
| `chromeOtherPssKb` | {'int': 3859} |
| `chromeProcesses` | {'int': 3859} |
| `chromeProfiles` | {'int': 3859} |
| `chromeRendererMaxPssKb` | {'int': 3859} |
| `chromeRendererPssKb` | {'int': 3859} |
| `chromeRenderers` | {'int': 3859} |
| `chromeTabs` | {'int': 3859} |
| `chromeTabsProbedProfiles` | {'int': 3859} |
| `chromeUtilityPssKb` | {'int': 3859} |
| `desktopPssKb` | {'int': 3859} |
| `hostPssKb` | {'int': 3859} |
| `kind` | {'str': 3859} |
| `memAvailableKb` | {'int': 3859} |
| `memTotalKb` | {'int': 3859} |
| `otherPssKb` | {'int': 3859} |
| `processes` | {'int': 3859} |
| `pssFallbackProcesses` | {'int': 3859} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
