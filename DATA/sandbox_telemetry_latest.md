# sandbox_telemetry_parse — 2026-11-26 05:41:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3100244 lines=6867
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6852 |
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
| `chromeBrowserPssKb` | {'int': 6852} |
| `chromeGpuPssKb` | {'int': 6852} |
| `chromeOtherPssKb` | {'int': 6852} |
| `chromeProcesses` | {'int': 6852} |
| `chromeProfiles` | {'int': 6852} |
| `chromeRendererMaxPssKb` | {'int': 6852} |
| `chromeRendererPssKb` | {'int': 6852} |
| `chromeRenderers` | {'int': 6852} |
| `chromeTabs` | {'int': 6852} |
| `chromeTabsProbedProfiles` | {'int': 6852} |
| `chromeUtilityPssKb` | {'int': 6852} |
| `desktopPssKb` | {'int': 6852} |
| `hostPssKb` | {'int': 6852} |
| `kind` | {'str': 6852} |
| `memAvailableKb` | {'int': 6852} |
| `memTotalKb` | {'int': 6852} |
| `otherPssKb` | {'int': 6852} |
| `processes` | {'int': 6852} |
| `pssFallbackProcesses` | {'int': 6852} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
