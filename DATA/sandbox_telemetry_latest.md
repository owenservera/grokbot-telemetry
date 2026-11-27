# sandbox_telemetry_parse — 2026-11-27 01:59:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=183364 lines=412
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 404 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 404} |
| `chromeGpuPssKb` | {'int': 404} |
| `chromeOtherPssKb` | {'int': 404} |
| `chromeProcesses` | {'int': 404} |
| `chromeProfiles` | {'int': 404} |
| `chromeRendererMaxPssKb` | {'int': 404} |
| `chromeRendererPssKb` | {'int': 404} |
| `chromeRenderers` | {'int': 404} |
| `chromeTabs` | {'int': 404} |
| `chromeTabsProbedProfiles` | {'int': 404} |
| `chromeUtilityPssKb` | {'int': 404} |
| `desktopPssKb` | {'int': 404} |
| `hostPssKb` | {'int': 404} |
| `kind` | {'str': 404} |
| `memAvailableKb` | {'int': 404} |
| `memTotalKb` | {'int': 404} |
| `otherPssKb` | {'int': 404} |
| `processes` | {'int': 404} |
| `pssFallbackProcesses` | {'int': 404} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
