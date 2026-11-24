# sandbox_telemetry_parse — 2026-11-24 15:03:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2331750 lines=5168
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5153 |
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
| `chromeBrowserPssKb` | {'int': 5153} |
| `chromeGpuPssKb` | {'int': 5153} |
| `chromeOtherPssKb` | {'int': 5153} |
| `chromeProcesses` | {'int': 5153} |
| `chromeProfiles` | {'int': 5153} |
| `chromeRendererMaxPssKb` | {'int': 5153} |
| `chromeRendererPssKb` | {'int': 5153} |
| `chromeRenderers` | {'int': 5153} |
| `chromeTabs` | {'int': 5153} |
| `chromeTabsProbedProfiles` | {'int': 5153} |
| `chromeUtilityPssKb` | {'int': 5153} |
| `desktopPssKb` | {'int': 5153} |
| `hostPssKb` | {'int': 5153} |
| `kind` | {'str': 5153} |
| `memAvailableKb` | {'int': 5153} |
| `memTotalKb` | {'int': 5153} |
| `otherPssKb` | {'int': 5153} |
| `processes` | {'int': 5153} |
| `pssFallbackProcesses` | {'int': 5153} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
