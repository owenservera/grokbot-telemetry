# sandbox_telemetry_parse — 2026-11-25 13:13:13 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2769642 lines=6136
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6121 |
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
| `chromeBrowserPssKb` | {'int': 6121} |
| `chromeGpuPssKb` | {'int': 6121} |
| `chromeOtherPssKb` | {'int': 6121} |
| `chromeProcesses` | {'int': 6121} |
| `chromeProfiles` | {'int': 6121} |
| `chromeRendererMaxPssKb` | {'int': 6121} |
| `chromeRendererPssKb` | {'int': 6121} |
| `chromeRenderers` | {'int': 6121} |
| `chromeTabs` | {'int': 6121} |
| `chromeTabsProbedProfiles` | {'int': 6121} |
| `chromeUtilityPssKb` | {'int': 6121} |
| `desktopPssKb` | {'int': 6121} |
| `hostPssKb` | {'int': 6121} |
| `kind` | {'str': 6121} |
| `memAvailableKb` | {'int': 6121} |
| `memTotalKb` | {'int': 6121} |
| `otherPssKb` | {'int': 6121} |
| `processes` | {'int': 6121} |
| `pssFallbackProcesses` | {'int': 6121} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
