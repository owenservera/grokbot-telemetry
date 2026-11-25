# sandbox_telemetry_parse — 2026-11-26 00:51:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3002085 lines=6650
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6635 |
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
| `chromeBrowserPssKb` | {'int': 6635} |
| `chromeGpuPssKb` | {'int': 6635} |
| `chromeOtherPssKb` | {'int': 6635} |
| `chromeProcesses` | {'int': 6635} |
| `chromeProfiles` | {'int': 6635} |
| `chromeRendererMaxPssKb` | {'int': 6635} |
| `chromeRendererPssKb` | {'int': 6635} |
| `chromeRenderers` | {'int': 6635} |
| `chromeTabs` | {'int': 6635} |
| `chromeTabsProbedProfiles` | {'int': 6635} |
| `chromeUtilityPssKb` | {'int': 6635} |
| `desktopPssKb` | {'int': 6635} |
| `hostPssKb` | {'int': 6635} |
| `kind` | {'str': 6635} |
| `memAvailableKb` | {'int': 6635} |
| `memTotalKb` | {'int': 6635} |
| `otherPssKb` | {'int': 6635} |
| `processes` | {'int': 6635} |
| `pssFallbackProcesses` | {'int': 6635} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
