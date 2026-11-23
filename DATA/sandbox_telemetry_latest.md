# sandbox_telemetry_parse — 2026-11-23 14:47:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1879373 lines=4168
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4153 |
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
| `chromeBrowserPssKb` | {'int': 4153} |
| `chromeGpuPssKb` | {'int': 4153} |
| `chromeOtherPssKb` | {'int': 4153} |
| `chromeProcesses` | {'int': 4153} |
| `chromeProfiles` | {'int': 4153} |
| `chromeRendererMaxPssKb` | {'int': 4153} |
| `chromeRendererPssKb` | {'int': 4153} |
| `chromeRenderers` | {'int': 4153} |
| `chromeTabs` | {'int': 4153} |
| `chromeTabsProbedProfiles` | {'int': 4153} |
| `chromeUtilityPssKb` | {'int': 4153} |
| `desktopPssKb` | {'int': 4153} |
| `hostPssKb` | {'int': 4153} |
| `kind` | {'str': 4153} |
| `memAvailableKb` | {'int': 4153} |
| `memTotalKb` | {'int': 4153} |
| `otherPssKb` | {'int': 4153} |
| `processes` | {'int': 4153} |
| `pssFallbackProcesses` | {'int': 4153} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
