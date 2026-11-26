# sandbox_telemetry_parse — 2026-11-26 09:18:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3182131 lines=7048
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7033 |
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
| `chromeBrowserPssKb` | {'int': 7033} |
| `chromeGpuPssKb` | {'int': 7033} |
| `chromeOtherPssKb` | {'int': 7033} |
| `chromeProcesses` | {'int': 7033} |
| `chromeProfiles` | {'int': 7033} |
| `chromeRendererMaxPssKb` | {'int': 7033} |
| `chromeRendererPssKb` | {'int': 7033} |
| `chromeRenderers` | {'int': 7033} |
| `chromeTabs` | {'int': 7033} |
| `chromeTabsProbedProfiles` | {'int': 7033} |
| `chromeUtilityPssKb` | {'int': 7033} |
| `desktopPssKb` | {'int': 7033} |
| `hostPssKb` | {'int': 7033} |
| `kind` | {'str': 7033} |
| `memAvailableKb` | {'int': 7033} |
| `memTotalKb` | {'int': 7033} |
| `otherPssKb` | {'int': 7033} |
| `processes` | {'int': 7033} |
| `pssFallbackProcesses` | {'int': 7033} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
