# sandbox_telemetry_parse — 2026-11-23 19:53:36 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1966737 lines=4361
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4346 |
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
| `chromeBrowserPssKb` | {'int': 4346} |
| `chromeGpuPssKb` | {'int': 4346} |
| `chromeOtherPssKb` | {'int': 4346} |
| `chromeProcesses` | {'int': 4346} |
| `chromeProfiles` | {'int': 4346} |
| `chromeRendererMaxPssKb` | {'int': 4346} |
| `chromeRendererPssKb` | {'int': 4346} |
| `chromeRenderers` | {'int': 4346} |
| `chromeTabs` | {'int': 4346} |
| `chromeTabsProbedProfiles` | {'int': 4346} |
| `chromeUtilityPssKb` | {'int': 4346} |
| `desktopPssKb` | {'int': 4346} |
| `hostPssKb` | {'int': 4346} |
| `kind` | {'str': 4346} |
| `memAvailableKb` | {'int': 4346} |
| `memTotalKb` | {'int': 4346} |
| `otherPssKb` | {'int': 4346} |
| `processes` | {'int': 4346} |
| `pssFallbackProcesses` | {'int': 4346} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
