# sandbox_telemetry_parse — 2026-11-26 12:38:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3252276 lines=7203
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7188 |
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
| `chromeBrowserPssKb` | {'int': 7188} |
| `chromeGpuPssKb` | {'int': 7188} |
| `chromeOtherPssKb` | {'int': 7188} |
| `chromeProcesses` | {'int': 7188} |
| `chromeProfiles` | {'int': 7188} |
| `chromeRendererMaxPssKb` | {'int': 7188} |
| `chromeRendererPssKb` | {'int': 7188} |
| `chromeRenderers` | {'int': 7188} |
| `chromeTabs` | {'int': 7188} |
| `chromeTabsProbedProfiles` | {'int': 7188} |
| `chromeUtilityPssKb` | {'int': 7188} |
| `desktopPssKb` | {'int': 7188} |
| `hostPssKb` | {'int': 7188} |
| `kind` | {'str': 7188} |
| `memAvailableKb` | {'int': 7188} |
| `memTotalKb` | {'int': 7188} |
| `otherPssKb` | {'int': 7188} |
| `processes` | {'int': 7188} |
| `pssFallbackProcesses` | {'int': 7188} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
