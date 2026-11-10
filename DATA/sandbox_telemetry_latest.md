# sandbox_telemetry_parse — 2026-11-10 22:32:54 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1355828 lines=3004
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2995 |
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
| `chromeBrowserPssKb` | {'int': 2995} |
| `chromeGpuPssKb` | {'int': 2995} |
| `chromeOtherPssKb` | {'int': 2995} |
| `chromeProcesses` | {'int': 2995} |
| `chromeProfiles` | {'int': 2995} |
| `chromeRendererMaxPssKb` | {'int': 2995} |
| `chromeRendererPssKb` | {'int': 2995} |
| `chromeRenderers` | {'int': 2995} |
| `chromeTabs` | {'int': 2995} |
| `chromeTabsProbedProfiles` | {'int': 2995} |
| `chromeUtilityPssKb` | {'int': 2995} |
| `desktopPssKb` | {'int': 2995} |
| `hostPssKb` | {'int': 2995} |
| `kind` | {'str': 2995} |
| `memAvailableKb` | {'int': 2995} |
| `memTotalKb` | {'int': 2995} |
| `otherPssKb` | {'int': 2995} |
| `processes` | {'int': 2995} |
| `pssFallbackProcesses` | {'int': 2995} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
