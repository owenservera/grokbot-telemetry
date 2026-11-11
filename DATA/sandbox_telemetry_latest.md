# sandbox_telemetry_parse — 2026-11-11 07:46:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1529938 lines=3389
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3380 |
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
| `chromeBrowserPssKb` | {'int': 3380} |
| `chromeGpuPssKb` | {'int': 3380} |
| `chromeOtherPssKb` | {'int': 3380} |
| `chromeProcesses` | {'int': 3380} |
| `chromeProfiles` | {'int': 3380} |
| `chromeRendererMaxPssKb` | {'int': 3380} |
| `chromeRendererPssKb` | {'int': 3380} |
| `chromeRenderers` | {'int': 3380} |
| `chromeTabs` | {'int': 3380} |
| `chromeTabsProbedProfiles` | {'int': 3380} |
| `chromeUtilityPssKb` | {'int': 3380} |
| `desktopPssKb` | {'int': 3380} |
| `hostPssKb` | {'int': 3380} |
| `kind` | {'str': 3380} |
| `memAvailableKb` | {'int': 3380} |
| `memTotalKb` | {'int': 3380} |
| `otherPssKb` | {'int': 3380} |
| `processes` | {'int': 3380} |
| `pssFallbackProcesses` | {'int': 3380} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
