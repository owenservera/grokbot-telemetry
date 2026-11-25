# sandbox_telemetry_parse — 2026-11-25 19:15:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2886757 lines=6395
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6380 |
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
| `chromeBrowserPssKb` | {'int': 6380} |
| `chromeGpuPssKb` | {'int': 6380} |
| `chromeOtherPssKb` | {'int': 6380} |
| `chromeProcesses` | {'int': 6380} |
| `chromeProfiles` | {'int': 6380} |
| `chromeRendererMaxPssKb` | {'int': 6380} |
| `chromeRendererPssKb` | {'int': 6380} |
| `chromeRenderers` | {'int': 6380} |
| `chromeTabs` | {'int': 6380} |
| `chromeTabsProbedProfiles` | {'int': 6380} |
| `chromeUtilityPssKb` | {'int': 6380} |
| `desktopPssKb` | {'int': 6380} |
| `hostPssKb` | {'int': 6380} |
| `kind` | {'str': 6380} |
| `memAvailableKb` | {'int': 6380} |
| `memTotalKb` | {'int': 6380} |
| `otherPssKb` | {'int': 6380} |
| `processes` | {'int': 6380} |
| `pssFallbackProcesses` | {'int': 6380} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
