# sandbox_telemetry_parse — 2026-11-26 22:29:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=114136 lines=259
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 251 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 251} |
| `chromeGpuPssKb` | {'int': 251} |
| `chromeOtherPssKb` | {'int': 251} |
| `chromeProcesses` | {'int': 251} |
| `chromeProfiles` | {'int': 251} |
| `chromeRendererMaxPssKb` | {'int': 251} |
| `chromeRendererPssKb` | {'int': 251} |
| `chromeRenderers` | {'int': 251} |
| `chromeTabs` | {'int': 251} |
| `chromeTabsProbedProfiles` | {'int': 251} |
| `chromeUtilityPssKb` | {'int': 251} |
| `desktopPssKb` | {'int': 251} |
| `hostPssKb` | {'int': 251} |
| `kind` | {'str': 251} |
| `memAvailableKb` | {'int': 251} |
| `memTotalKb` | {'int': 251} |
| `otherPssKb` | {'int': 251} |
| `processes` | {'int': 251} |
| `pssFallbackProcesses` | {'int': 251} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
