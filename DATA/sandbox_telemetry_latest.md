# sandbox_telemetry_parse — 2026-11-11 12:35:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1634478 lines=3620
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3611 |
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
| `chromeBrowserPssKb` | {'int': 3611} |
| `chromeGpuPssKb` | {'int': 3611} |
| `chromeOtherPssKb` | {'int': 3611} |
| `chromeProcesses` | {'int': 3611} |
| `chromeProfiles` | {'int': 3611} |
| `chromeRendererMaxPssKb` | {'int': 3611} |
| `chromeRendererPssKb` | {'int': 3611} |
| `chromeRenderers` | {'int': 3611} |
| `chromeTabs` | {'int': 3611} |
| `chromeTabsProbedProfiles` | {'int': 3611} |
| `chromeUtilityPssKb` | {'int': 3611} |
| `desktopPssKb` | {'int': 3611} |
| `hostPssKb` | {'int': 3611} |
| `kind` | {'str': 3611} |
| `memAvailableKb` | {'int': 3611} |
| `memTotalKb` | {'int': 3611} |
| `otherPssKb` | {'int': 3611} |
| `processes` | {'int': 3611} |
| `pssFallbackProcesses` | {'int': 3611} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
