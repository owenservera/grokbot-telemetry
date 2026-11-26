# sandbox_telemetry_parse — 2026-11-26 11:51:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3236446 lines=7168
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7153 |
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
| `chromeBrowserPssKb` | {'int': 7153} |
| `chromeGpuPssKb` | {'int': 7153} |
| `chromeOtherPssKb` | {'int': 7153} |
| `chromeProcesses` | {'int': 7153} |
| `chromeProfiles` | {'int': 7153} |
| `chromeRendererMaxPssKb` | {'int': 7153} |
| `chromeRendererPssKb` | {'int': 7153} |
| `chromeRenderers` | {'int': 7153} |
| `chromeTabs` | {'int': 7153} |
| `chromeTabsProbedProfiles` | {'int': 7153} |
| `chromeUtilityPssKb` | {'int': 7153} |
| `desktopPssKb` | {'int': 7153} |
| `hostPssKb` | {'int': 7153} |
| `kind` | {'str': 7153} |
| `memAvailableKb` | {'int': 7153} |
| `memTotalKb` | {'int': 7153} |
| `otherPssKb` | {'int': 7153} |
| `processes` | {'int': 7153} |
| `pssFallbackProcesses` | {'int': 7153} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
