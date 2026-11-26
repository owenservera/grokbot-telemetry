# sandbox_telemetry_parse — 2026-11-26 09:44:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3193456 lines=7073
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7058 |
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
| `chromeBrowserPssKb` | {'int': 7058} |
| `chromeGpuPssKb` | {'int': 7058} |
| `chromeOtherPssKb` | {'int': 7058} |
| `chromeProcesses` | {'int': 7058} |
| `chromeProfiles` | {'int': 7058} |
| `chromeRendererMaxPssKb` | {'int': 7058} |
| `chromeRendererPssKb` | {'int': 7058} |
| `chromeRenderers` | {'int': 7058} |
| `chromeTabs` | {'int': 7058} |
| `chromeTabsProbedProfiles` | {'int': 7058} |
| `chromeUtilityPssKb` | {'int': 7058} |
| `desktopPssKb` | {'int': 7058} |
| `hostPssKb` | {'int': 7058} |
| `kind` | {'str': 7058} |
| `memAvailableKb` | {'int': 7058} |
| `memTotalKb` | {'int': 7058} |
| `otherPssKb` | {'int': 7058} |
| `processes` | {'int': 7058} |
| `pssFallbackProcesses` | {'int': 7058} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
