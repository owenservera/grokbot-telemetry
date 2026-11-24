# sandbox_telemetry_parse — 2026-11-25 00:18:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2513241 lines=5569
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5554 |
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
| `chromeBrowserPssKb` | {'int': 5554} |
| `chromeGpuPssKb` | {'int': 5554} |
| `chromeOtherPssKb` | {'int': 5554} |
| `chromeProcesses` | {'int': 5554} |
| `chromeProfiles` | {'int': 5554} |
| `chromeRendererMaxPssKb` | {'int': 5554} |
| `chromeRendererPssKb` | {'int': 5554} |
| `chromeRenderers` | {'int': 5554} |
| `chromeTabs` | {'int': 5554} |
| `chromeTabsProbedProfiles` | {'int': 5554} |
| `chromeUtilityPssKb` | {'int': 5554} |
| `desktopPssKb` | {'int': 5554} |
| `hostPssKb` | {'int': 5554} |
| `kind` | {'str': 5554} |
| `memAvailableKb` | {'int': 5554} |
| `memTotalKb` | {'int': 5554} |
| `otherPssKb` | {'int': 5554} |
| `processes` | {'int': 5554} |
| `pssFallbackProcesses` | {'int': 5554} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
