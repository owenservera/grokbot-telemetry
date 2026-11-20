# sandbox_telemetry_parse — 2026-11-20 11:07:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1689512 lines=3745
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3734 |
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
| `chromeBrowserPssKb` | {'int': 3734} |
| `chromeGpuPssKb` | {'int': 3734} |
| `chromeOtherPssKb` | {'int': 3734} |
| `chromeProcesses` | {'int': 3734} |
| `chromeProfiles` | {'int': 3734} |
| `chromeRendererMaxPssKb` | {'int': 3734} |
| `chromeRendererPssKb` | {'int': 3734} |
| `chromeRenderers` | {'int': 3734} |
| `chromeTabs` | {'int': 3734} |
| `chromeTabsProbedProfiles` | {'int': 3734} |
| `chromeUtilityPssKb` | {'int': 3734} |
| `desktopPssKb` | {'int': 3734} |
| `hostPssKb` | {'int': 3734} |
| `kind` | {'str': 3734} |
| `memAvailableKb` | {'int': 3734} |
| `memTotalKb` | {'int': 3734} |
| `otherPssKb` | {'int': 3734} |
| `processes` | {'int': 3734} |
| `pssFallbackProcesses` | {'int': 3734} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
