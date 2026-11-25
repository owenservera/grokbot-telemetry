# sandbox_telemetry_parse — 2026-11-25 08:01:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2660639 lines=5895
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5880 |
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
| `chromeBrowserPssKb` | {'int': 5880} |
| `chromeGpuPssKb` | {'int': 5880} |
| `chromeOtherPssKb` | {'int': 5880} |
| `chromeProcesses` | {'int': 5880} |
| `chromeProfiles` | {'int': 5880} |
| `chromeRendererMaxPssKb` | {'int': 5880} |
| `chromeRendererPssKb` | {'int': 5880} |
| `chromeRenderers` | {'int': 5880} |
| `chromeTabs` | {'int': 5880} |
| `chromeTabsProbedProfiles` | {'int': 5880} |
| `chromeUtilityPssKb` | {'int': 5880} |
| `desktopPssKb` | {'int': 5880} |
| `hostPssKb` | {'int': 5880} |
| `kind` | {'str': 5880} |
| `memAvailableKb` | {'int': 5880} |
| `memTotalKb` | {'int': 5880} |
| `otherPssKb` | {'int': 5880} |
| `processes` | {'int': 5880} |
| `pssFallbackProcesses` | {'int': 5880} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
