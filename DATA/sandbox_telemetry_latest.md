# sandbox_telemetry_parse — 2026-11-28 19:15:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1019118 lines=2259
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2251 |
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
| `chromeBrowserPssKb` | {'int': 2251} |
| `chromeGpuPssKb` | {'int': 2251} |
| `chromeOtherPssKb` | {'int': 2251} |
| `chromeProcesses` | {'int': 2251} |
| `chromeProfiles` | {'int': 2251} |
| `chromeRendererMaxPssKb` | {'int': 2251} |
| `chromeRendererPssKb` | {'int': 2251} |
| `chromeRenderers` | {'int': 2251} |
| `chromeTabs` | {'int': 2251} |
| `chromeTabsProbedProfiles` | {'int': 2251} |
| `chromeUtilityPssKb` | {'int': 2251} |
| `desktopPssKb` | {'int': 2251} |
| `hostPssKb` | {'int': 2251} |
| `kind` | {'str': 2251} |
| `memAvailableKb` | {'int': 2251} |
| `memTotalKb` | {'int': 2251} |
| `otherPssKb` | {'int': 2251} |
| `processes` | {'int': 2251} |
| `pssFallbackProcesses` | {'int': 2251} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
