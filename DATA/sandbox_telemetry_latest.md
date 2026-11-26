# sandbox_telemetry_parse — 2026-11-26 05:08:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3086668 lines=6837
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6822 |
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
| `chromeBrowserPssKb` | {'int': 6822} |
| `chromeGpuPssKb` | {'int': 6822} |
| `chromeOtherPssKb` | {'int': 6822} |
| `chromeProcesses` | {'int': 6822} |
| `chromeProfiles` | {'int': 6822} |
| `chromeRendererMaxPssKb` | {'int': 6822} |
| `chromeRendererPssKb` | {'int': 6822} |
| `chromeRenderers` | {'int': 6822} |
| `chromeTabs` | {'int': 6822} |
| `chromeTabsProbedProfiles` | {'int': 6822} |
| `chromeUtilityPssKb` | {'int': 6822} |
| `desktopPssKb` | {'int': 6822} |
| `hostPssKb` | {'int': 6822} |
| `kind` | {'str': 6822} |
| `memAvailableKb` | {'int': 6822} |
| `memTotalKb` | {'int': 6822} |
| `otherPssKb` | {'int': 6822} |
| `processes` | {'int': 6822} |
| `pssFallbackProcesses` | {'int': 6822} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
