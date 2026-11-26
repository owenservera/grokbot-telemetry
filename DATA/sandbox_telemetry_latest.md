# sandbox_telemetry_parse — 2026-11-26 13:03:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3260414 lines=7221
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7206 |
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
| `chromeBrowserPssKb` | {'int': 7206} |
| `chromeGpuPssKb` | {'int': 7206} |
| `chromeOtherPssKb` | {'int': 7206} |
| `chromeProcesses` | {'int': 7206} |
| `chromeProfiles` | {'int': 7206} |
| `chromeRendererMaxPssKb` | {'int': 7206} |
| `chromeRendererPssKb` | {'int': 7206} |
| `chromeRenderers` | {'int': 7206} |
| `chromeTabs` | {'int': 7206} |
| `chromeTabsProbedProfiles` | {'int': 7206} |
| `chromeUtilityPssKb` | {'int': 7206} |
| `desktopPssKb` | {'int': 7206} |
| `hostPssKb` | {'int': 7206} |
| `kind` | {'str': 7206} |
| `memAvailableKb` | {'int': 7206} |
| `memTotalKb` | {'int': 7206} |
| `otherPssKb` | {'int': 7206} |
| `processes` | {'int': 7206} |
| `pssFallbackProcesses` | {'int': 7206} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
