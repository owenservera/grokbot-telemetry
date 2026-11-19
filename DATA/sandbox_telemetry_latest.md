# sandbox_telemetry_parse — 2026-11-20 00:42:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1511846 lines=3352
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3341 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3341} |
| `chromeGpuPssKb` | {'int': 3341} |
| `chromeOtherPssKb` | {'int': 3341} |
| `chromeProcesses` | {'int': 3341} |
| `chromeProfiles` | {'int': 3341} |
| `chromeRendererMaxPssKb` | {'int': 3341} |
| `chromeRendererPssKb` | {'int': 3341} |
| `chromeRenderers` | {'int': 3341} |
| `chromeTabs` | {'int': 3341} |
| `chromeTabsProbedProfiles` | {'int': 3341} |
| `chromeUtilityPssKb` | {'int': 3341} |
| `desktopPssKb` | {'int': 3341} |
| `hostPssKb` | {'int': 3341} |
| `kind` | {'str': 3341} |
| `memAvailableKb` | {'int': 3341} |
| `memTotalKb` | {'int': 3341} |
| `otherPssKb` | {'int': 3341} |
| `processes` | {'int': 3341} |
| `pssFallbackProcesses` | {'int': 3341} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
