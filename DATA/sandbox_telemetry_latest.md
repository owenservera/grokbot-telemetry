# sandbox_telemetry_parse — 2026-11-26 15:38:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3315600 lines=7343
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7328 |
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
| `chromeBrowserPssKb` | {'int': 7328} |
| `chromeGpuPssKb` | {'int': 7328} |
| `chromeOtherPssKb` | {'int': 7328} |
| `chromeProcesses` | {'int': 7328} |
| `chromeProfiles` | {'int': 7328} |
| `chromeRendererMaxPssKb` | {'int': 7328} |
| `chromeRendererPssKb` | {'int': 7328} |
| `chromeRenderers` | {'int': 7328} |
| `chromeTabs` | {'int': 7328} |
| `chromeTabsProbedProfiles` | {'int': 7328} |
| `chromeUtilityPssKb` | {'int': 7328} |
| `desktopPssKb` | {'int': 7328} |
| `hostPssKb` | {'int': 7328} |
| `kind` | {'str': 7328} |
| `memAvailableKb` | {'int': 7328} |
| `memTotalKb` | {'int': 7328} |
| `otherPssKb` | {'int': 7328} |
| `processes` | {'int': 7328} |
| `pssFallbackProcesses` | {'int': 7328} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
