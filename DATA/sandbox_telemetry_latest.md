# sandbox_telemetry_parse — 2026-11-26 01:45:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3016549 lines=6682
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6667 |
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
| `chromeBrowserPssKb` | {'int': 6667} |
| `chromeGpuPssKb` | {'int': 6667} |
| `chromeOtherPssKb` | {'int': 6667} |
| `chromeProcesses` | {'int': 6667} |
| `chromeProfiles` | {'int': 6667} |
| `chromeRendererMaxPssKb` | {'int': 6667} |
| `chromeRendererPssKb` | {'int': 6667} |
| `chromeRenderers` | {'int': 6667} |
| `chromeTabs` | {'int': 6667} |
| `chromeTabsProbedProfiles` | {'int': 6667} |
| `chromeUtilityPssKb` | {'int': 6667} |
| `desktopPssKb` | {'int': 6667} |
| `hostPssKb` | {'int': 6667} |
| `kind` | {'str': 6667} |
| `memAvailableKb` | {'int': 6667} |
| `memTotalKb` | {'int': 6667} |
| `otherPssKb` | {'int': 6667} |
| `processes` | {'int': 6667} |
| `pssFallbackProcesses` | {'int': 6667} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
