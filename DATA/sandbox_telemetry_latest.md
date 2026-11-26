# sandbox_telemetry_parse — 2026-11-26 05:20:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3092557 lines=6850
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6835 |
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
| `chromeBrowserPssKb` | {'int': 6835} |
| `chromeGpuPssKb` | {'int': 6835} |
| `chromeOtherPssKb` | {'int': 6835} |
| `chromeProcesses` | {'int': 6835} |
| `chromeProfiles` | {'int': 6835} |
| `chromeRendererMaxPssKb` | {'int': 6835} |
| `chromeRendererPssKb` | {'int': 6835} |
| `chromeRenderers` | {'int': 6835} |
| `chromeTabs` | {'int': 6835} |
| `chromeTabsProbedProfiles` | {'int': 6835} |
| `chromeUtilityPssKb` | {'int': 6835} |
| `desktopPssKb` | {'int': 6835} |
| `hostPssKb` | {'int': 6835} |
| `kind` | {'str': 6835} |
| `memAvailableKb` | {'int': 6835} |
| `memTotalKb` | {'int': 6835} |
| `otherPssKb` | {'int': 6835} |
| `processes` | {'int': 6835} |
| `pssFallbackProcesses` | {'int': 6835} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
