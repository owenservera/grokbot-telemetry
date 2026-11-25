# sandbox_telemetry_parse — 2026-11-25 18:12:38 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2864604 lines=6346
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6331 |
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
| `chromeBrowserPssKb` | {'int': 6331} |
| `chromeGpuPssKb` | {'int': 6331} |
| `chromeOtherPssKb` | {'int': 6331} |
| `chromeProcesses` | {'int': 6331} |
| `chromeProfiles` | {'int': 6331} |
| `chromeRendererMaxPssKb` | {'int': 6331} |
| `chromeRendererPssKb` | {'int': 6331} |
| `chromeRenderers` | {'int': 6331} |
| `chromeTabs` | {'int': 6331} |
| `chromeTabsProbedProfiles` | {'int': 6331} |
| `chromeUtilityPssKb` | {'int': 6331} |
| `desktopPssKb` | {'int': 6331} |
| `hostPssKb` | {'int': 6331} |
| `kind` | {'str': 6331} |
| `memAvailableKb` | {'int': 6331} |
| `memTotalKb` | {'int': 6331} |
| `otherPssKb` | {'int': 6331} |
| `processes` | {'int': 6331} |
| `pssFallbackProcesses` | {'int': 6331} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
