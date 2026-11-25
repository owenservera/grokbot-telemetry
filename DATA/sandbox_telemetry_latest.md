# sandbox_telemetry_parse — 2026-11-25 18:29:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2871384 lines=6361
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6346 |
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
| `chromeBrowserPssKb` | {'int': 6346} |
| `chromeGpuPssKb` | {'int': 6346} |
| `chromeOtherPssKb` | {'int': 6346} |
| `chromeProcesses` | {'int': 6346} |
| `chromeProfiles` | {'int': 6346} |
| `chromeRendererMaxPssKb` | {'int': 6346} |
| `chromeRendererPssKb` | {'int': 6346} |
| `chromeRenderers` | {'int': 6346} |
| `chromeTabs` | {'int': 6346} |
| `chromeTabsProbedProfiles` | {'int': 6346} |
| `chromeUtilityPssKb` | {'int': 6346} |
| `desktopPssKb` | {'int': 6346} |
| `hostPssKb` | {'int': 6346} |
| `kind` | {'str': 6346} |
| `memAvailableKb` | {'int': 6346} |
| `memTotalKb` | {'int': 6346} |
| `otherPssKb` | {'int': 6346} |
| `processes` | {'int': 6346} |
| `pssFallbackProcesses` | {'int': 6346} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
