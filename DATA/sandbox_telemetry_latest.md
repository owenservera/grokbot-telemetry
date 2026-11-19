# sandbox_telemetry_parse — 2026-11-19 08:12:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1181420 lines=2620
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2611 |
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
| `chromeBrowserPssKb` | {'int': 2611} |
| `chromeGpuPssKb` | {'int': 2611} |
| `chromeOtherPssKb` | {'int': 2611} |
| `chromeProcesses` | {'int': 2611} |
| `chromeProfiles` | {'int': 2611} |
| `chromeRendererMaxPssKb` | {'int': 2611} |
| `chromeRendererPssKb` | {'int': 2611} |
| `chromeRenderers` | {'int': 2611} |
| `chromeTabs` | {'int': 2611} |
| `chromeTabsProbedProfiles` | {'int': 2611} |
| `chromeUtilityPssKb` | {'int': 2611} |
| `desktopPssKb` | {'int': 2611} |
| `hostPssKb` | {'int': 2611} |
| `kind` | {'str': 2611} |
| `memAvailableKb` | {'int': 2611} |
| `memTotalKb` | {'int': 2611} |
| `otherPssKb` | {'int': 2611} |
| `processes` | {'int': 2611} |
| `pssFallbackProcesses` | {'int': 2611} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
