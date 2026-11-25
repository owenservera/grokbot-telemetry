# sandbox_telemetry_parse — 2026-11-25 10:34:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2720365 lines=6027
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6012 |
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
| `chromeBrowserPssKb` | {'int': 6012} |
| `chromeGpuPssKb` | {'int': 6012} |
| `chromeOtherPssKb` | {'int': 6012} |
| `chromeProcesses` | {'int': 6012} |
| `chromeProfiles` | {'int': 6012} |
| `chromeRendererMaxPssKb` | {'int': 6012} |
| `chromeRendererPssKb` | {'int': 6012} |
| `chromeRenderers` | {'int': 6012} |
| `chromeTabs` | {'int': 6012} |
| `chromeTabsProbedProfiles` | {'int': 6012} |
| `chromeUtilityPssKb` | {'int': 6012} |
| `desktopPssKb` | {'int': 6012} |
| `hostPssKb` | {'int': 6012} |
| `kind` | {'str': 6012} |
| `memAvailableKb` | {'int': 6012} |
| `memTotalKb` | {'int': 6012} |
| `otherPssKb` | {'int': 6012} |
| `processes` | {'int': 6012} |
| `pssFallbackProcesses` | {'int': 6012} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
