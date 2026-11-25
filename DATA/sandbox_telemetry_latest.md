# sandbox_telemetry_parse — 2026-11-25 07:58:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2659735 lines=5893
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5878 |
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
| `chromeBrowserPssKb` | {'int': 5878} |
| `chromeGpuPssKb` | {'int': 5878} |
| `chromeOtherPssKb` | {'int': 5878} |
| `chromeProcesses` | {'int': 5878} |
| `chromeProfiles` | {'int': 5878} |
| `chromeRendererMaxPssKb` | {'int': 5878} |
| `chromeRendererPssKb` | {'int': 5878} |
| `chromeRenderers` | {'int': 5878} |
| `chromeTabs` | {'int': 5878} |
| `chromeTabsProbedProfiles` | {'int': 5878} |
| `chromeUtilityPssKb` | {'int': 5878} |
| `desktopPssKb` | {'int': 5878} |
| `hostPssKb` | {'int': 5878} |
| `kind` | {'str': 5878} |
| `memAvailableKb` | {'int': 5878} |
| `memTotalKb` | {'int': 5878} |
| `otherPssKb` | {'int': 5878} |
| `processes` | {'int': 5878} |
| `pssFallbackProcesses` | {'int': 5878} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
