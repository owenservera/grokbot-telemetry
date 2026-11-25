# sandbox_telemetry_parse — 2026-11-25 22:58:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2961367 lines=6560
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6545 |
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
| `chromeBrowserPssKb` | {'int': 6545} |
| `chromeGpuPssKb` | {'int': 6545} |
| `chromeOtherPssKb` | {'int': 6545} |
| `chromeProcesses` | {'int': 6545} |
| `chromeProfiles` | {'int': 6545} |
| `chromeRendererMaxPssKb` | {'int': 6545} |
| `chromeRendererPssKb` | {'int': 6545} |
| `chromeRenderers` | {'int': 6545} |
| `chromeTabs` | {'int': 6545} |
| `chromeTabsProbedProfiles` | {'int': 6545} |
| `chromeUtilityPssKb` | {'int': 6545} |
| `desktopPssKb` | {'int': 6545} |
| `hostPssKb` | {'int': 6545} |
| `kind` | {'str': 6545} |
| `memAvailableKb` | {'int': 6545} |
| `memTotalKb` | {'int': 6545} |
| `otherPssKb` | {'int': 6545} |
| `processes` | {'int': 6545} |
| `pssFallbackProcesses` | {'int': 6545} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
