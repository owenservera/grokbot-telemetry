# sandbox_telemetry_parse — 2026-11-25 12:37:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2759243 lines=6113
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6098 |
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
| `chromeBrowserPssKb` | {'int': 6098} |
| `chromeGpuPssKb` | {'int': 6098} |
| `chromeOtherPssKb` | {'int': 6098} |
| `chromeProcesses` | {'int': 6098} |
| `chromeProfiles` | {'int': 6098} |
| `chromeRendererMaxPssKb` | {'int': 6098} |
| `chromeRendererPssKb` | {'int': 6098} |
| `chromeRenderers` | {'int': 6098} |
| `chromeTabs` | {'int': 6098} |
| `chromeTabsProbedProfiles` | {'int': 6098} |
| `chromeUtilityPssKb` | {'int': 6098} |
| `desktopPssKb` | {'int': 6098} |
| `hostPssKb` | {'int': 6098} |
| `kind` | {'str': 6098} |
| `memAvailableKb` | {'int': 6098} |
| `memTotalKb` | {'int': 6098} |
| `otherPssKb` | {'int': 6098} |
| `processes` | {'int': 6098} |
| `pssFallbackProcesses` | {'int': 6098} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
