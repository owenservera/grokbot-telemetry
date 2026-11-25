# sandbox_telemetry_parse — 2026-11-25 16:35:37 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2835213 lines=6281
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6266 |
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
| `chromeBrowserPssKb` | {'int': 6266} |
| `chromeGpuPssKb` | {'int': 6266} |
| `chromeOtherPssKb` | {'int': 6266} |
| `chromeProcesses` | {'int': 6266} |
| `chromeProfiles` | {'int': 6266} |
| `chromeRendererMaxPssKb` | {'int': 6266} |
| `chromeRendererPssKb` | {'int': 6266} |
| `chromeRenderers` | {'int': 6266} |
| `chromeTabs` | {'int': 6266} |
| `chromeTabsProbedProfiles` | {'int': 6266} |
| `chromeUtilityPssKb` | {'int': 6266} |
| `desktopPssKb` | {'int': 6266} |
| `hostPssKb` | {'int': 6266} |
| `kind` | {'str': 6266} |
| `memAvailableKb` | {'int': 6266} |
| `memTotalKb` | {'int': 6266} |
| `otherPssKb` | {'int': 6266} |
| `processes` | {'int': 6266} |
| `pssFallbackProcesses` | {'int': 6266} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
