# sandbox_telemetry_parse — 2026-11-25 22:38:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2954135 lines=6544
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6529 |
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
| `chromeBrowserPssKb` | {'int': 6529} |
| `chromeGpuPssKb` | {'int': 6529} |
| `chromeOtherPssKb` | {'int': 6529} |
| `chromeProcesses` | {'int': 6529} |
| `chromeProfiles` | {'int': 6529} |
| `chromeRendererMaxPssKb` | {'int': 6529} |
| `chromeRendererPssKb` | {'int': 6529} |
| `chromeRenderers` | {'int': 6529} |
| `chromeTabs` | {'int': 6529} |
| `chromeTabsProbedProfiles` | {'int': 6529} |
| `chromeUtilityPssKb` | {'int': 6529} |
| `desktopPssKb` | {'int': 6529} |
| `hostPssKb` | {'int': 6529} |
| `kind` | {'str': 6529} |
| `memAvailableKb` | {'int': 6529} |
| `memTotalKb` | {'int': 6529} |
| `otherPssKb` | {'int': 6529} |
| `processes` | {'int': 6529} |
| `pssFallbackProcesses` | {'int': 6529} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
