# sandbox_telemetry_parse — 2026-11-27 23:38:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=639891 lines=1421
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1413 |
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
| `chromeBrowserPssKb` | {'int': 1413} |
| `chromeGpuPssKb` | {'int': 1413} |
| `chromeOtherPssKb` | {'int': 1413} |
| `chromeProcesses` | {'int': 1413} |
| `chromeProfiles` | {'int': 1413} |
| `chromeRendererMaxPssKb` | {'int': 1413} |
| `chromeRendererPssKb` | {'int': 1413} |
| `chromeRenderers` | {'int': 1413} |
| `chromeTabs` | {'int': 1413} |
| `chromeTabsProbedProfiles` | {'int': 1413} |
| `chromeUtilityPssKb` | {'int': 1413} |
| `desktopPssKb` | {'int': 1413} |
| `hostPssKb` | {'int': 1413} |
| `kind` | {'str': 1413} |
| `memAvailableKb` | {'int': 1413} |
| `memTotalKb` | {'int': 1413} |
| `otherPssKb` | {'int': 1413} |
| `processes` | {'int': 1413} |
| `pssFallbackProcesses` | {'int': 1413} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
