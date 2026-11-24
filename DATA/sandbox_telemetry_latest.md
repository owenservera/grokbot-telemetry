# sandbox_telemetry_parse — 2026-11-25 00:13:05 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2510981 lines=5564
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5549 |
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
| `chromeBrowserPssKb` | {'int': 5549} |
| `chromeGpuPssKb` | {'int': 5549} |
| `chromeOtherPssKb` | {'int': 5549} |
| `chromeProcesses` | {'int': 5549} |
| `chromeProfiles` | {'int': 5549} |
| `chromeRendererMaxPssKb` | {'int': 5549} |
| `chromeRendererPssKb` | {'int': 5549} |
| `chromeRenderers` | {'int': 5549} |
| `chromeTabs` | {'int': 5549} |
| `chromeTabsProbedProfiles` | {'int': 5549} |
| `chromeUtilityPssKb` | {'int': 5549} |
| `desktopPssKb` | {'int': 5549} |
| `hostPssKb` | {'int': 5549} |
| `kind` | {'str': 5549} |
| `memAvailableKb` | {'int': 5549} |
| `memTotalKb` | {'int': 5549} |
| `otherPssKb` | {'int': 5549} |
| `processes` | {'int': 5549} |
| `pssFallbackProcesses` | {'int': 5549} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
