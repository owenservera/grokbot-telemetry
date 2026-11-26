# sandbox_telemetry_parse — 2026-11-26 01:43:38 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3015645 lines=6680
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6665 |
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
| `chromeBrowserPssKb` | {'int': 6665} |
| `chromeGpuPssKb` | {'int': 6665} |
| `chromeOtherPssKb` | {'int': 6665} |
| `chromeProcesses` | {'int': 6665} |
| `chromeProfiles` | {'int': 6665} |
| `chromeRendererMaxPssKb` | {'int': 6665} |
| `chromeRendererPssKb` | {'int': 6665} |
| `chromeRenderers` | {'int': 6665} |
| `chromeTabs` | {'int': 6665} |
| `chromeTabsProbedProfiles` | {'int': 6665} |
| `chromeUtilityPssKb` | {'int': 6665} |
| `desktopPssKb` | {'int': 6665} |
| `hostPssKb` | {'int': 6665} |
| `kind` | {'str': 6665} |
| `memAvailableKb` | {'int': 6665} |
| `memTotalKb` | {'int': 6665} |
| `otherPssKb` | {'int': 6665} |
| `processes` | {'int': 6665} |
| `pssFallbackProcesses` | {'int': 6665} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
