# sandbox_telemetry_parse — 2026-11-26 04:16:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3065854 lines=6791
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6776 |
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
| `chromeBrowserPssKb` | {'int': 6776} |
| `chromeGpuPssKb` | {'int': 6776} |
| `chromeOtherPssKb` | {'int': 6776} |
| `chromeProcesses` | {'int': 6776} |
| `chromeProfiles` | {'int': 6776} |
| `chromeRendererMaxPssKb` | {'int': 6776} |
| `chromeRendererPssKb` | {'int': 6776} |
| `chromeRenderers` | {'int': 6776} |
| `chromeTabs` | {'int': 6776} |
| `chromeTabsProbedProfiles` | {'int': 6776} |
| `chromeUtilityPssKb` | {'int': 6776} |
| `desktopPssKb` | {'int': 6776} |
| `hostPssKb` | {'int': 6776} |
| `kind` | {'str': 6776} |
| `memAvailableKb` | {'int': 6776} |
| `memTotalKb` | {'int': 6776} |
| `otherPssKb` | {'int': 6776} |
| `processes` | {'int': 6776} |
| `pssFallbackProcesses` | {'int': 6776} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
