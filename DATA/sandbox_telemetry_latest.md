# sandbox_telemetry_parse — 2026-11-25 05:29:23 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2608639 lines=5780
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5765 |
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
| `chromeBrowserPssKb` | {'int': 5765} |
| `chromeGpuPssKb` | {'int': 5765} |
| `chromeOtherPssKb` | {'int': 5765} |
| `chromeProcesses` | {'int': 5765} |
| `chromeProfiles` | {'int': 5765} |
| `chromeRendererMaxPssKb` | {'int': 5765} |
| `chromeRendererPssKb` | {'int': 5765} |
| `chromeRenderers` | {'int': 5765} |
| `chromeTabs` | {'int': 5765} |
| `chromeTabsProbedProfiles` | {'int': 5765} |
| `chromeUtilityPssKb` | {'int': 5765} |
| `desktopPssKb` | {'int': 5765} |
| `hostPssKb` | {'int': 5765} |
| `kind` | {'str': 5765} |
| `memAvailableKb` | {'int': 5765} |
| `memTotalKb` | {'int': 5765} |
| `otherPssKb` | {'int': 5765} |
| `processes` | {'int': 5765} |
| `pssFallbackProcesses` | {'int': 5765} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
