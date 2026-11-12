# sandbox_telemetry_parse — 2026-11-12 15:55:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2207896 lines=4887
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4878 |
| `egress_tunnel` | 5 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 4878} |
| `chromeGpuPssKb` | {'int': 4878} |
| `chromeOtherPssKb` | {'int': 4878} |
| `chromeProcesses` | {'int': 4878} |
| `chromeProfiles` | {'int': 4878} |
| `chromeRendererMaxPssKb` | {'int': 4878} |
| `chromeRendererPssKb` | {'int': 4878} |
| `chromeRenderers` | {'int': 4878} |
| `chromeTabs` | {'int': 4878} |
| `chromeTabsProbedProfiles` | {'int': 4878} |
| `chromeUtilityPssKb` | {'int': 4878} |
| `desktopPssKb` | {'int': 4878} |
| `hostPssKb` | {'int': 4878} |
| `kind` | {'str': 4878} |
| `memAvailableKb` | {'int': 4878} |
| `memTotalKb` | {'int': 4878} |
| `otherPssKb` | {'int': 4878} |
| `processes` | {'int': 4878} |
| `pssFallbackProcesses` | {'int': 4878} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
