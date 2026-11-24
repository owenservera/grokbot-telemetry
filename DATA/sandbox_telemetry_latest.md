# sandbox_telemetry_parse — 2026-11-24 23:21:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2494708 lines=5528
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5513 |
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
| `chromeBrowserPssKb` | {'int': 5513} |
| `chromeGpuPssKb` | {'int': 5513} |
| `chromeOtherPssKb` | {'int': 5513} |
| `chromeProcesses` | {'int': 5513} |
| `chromeProfiles` | {'int': 5513} |
| `chromeRendererMaxPssKb` | {'int': 5513} |
| `chromeRendererPssKb` | {'int': 5513} |
| `chromeRenderers` | {'int': 5513} |
| `chromeTabs` | {'int': 5513} |
| `chromeTabsProbedProfiles` | {'int': 5513} |
| `chromeUtilityPssKb` | {'int': 5513} |
| `desktopPssKb` | {'int': 5513} |
| `hostPssKb` | {'int': 5513} |
| `kind` | {'str': 5513} |
| `memAvailableKb` | {'int': 5513} |
| `memTotalKb` | {'int': 5513} |
| `otherPssKb` | {'int': 5513} |
| `processes` | {'int': 5513} |
| `pssFallbackProcesses` | {'int': 5513} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
