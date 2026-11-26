# sandbox_telemetry_parse — 2026-11-26 03:50:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3057711 lines=6773
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6758 |
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
| `chromeBrowserPssKb` | {'int': 6758} |
| `chromeGpuPssKb` | {'int': 6758} |
| `chromeOtherPssKb` | {'int': 6758} |
| `chromeProcesses` | {'int': 6758} |
| `chromeProfiles` | {'int': 6758} |
| `chromeRendererMaxPssKb` | {'int': 6758} |
| `chromeRendererPssKb` | {'int': 6758} |
| `chromeRenderers` | {'int': 6758} |
| `chromeTabs` | {'int': 6758} |
| `chromeTabsProbedProfiles` | {'int': 6758} |
| `chromeUtilityPssKb` | {'int': 6758} |
| `desktopPssKb` | {'int': 6758} |
| `hostPssKb` | {'int': 6758} |
| `kind` | {'str': 6758} |
| `memAvailableKb` | {'int': 6758} |
| `memTotalKb` | {'int': 6758} |
| `otherPssKb` | {'int': 6758} |
| `processes` | {'int': 6758} |
| `pssFallbackProcesses` | {'int': 6758} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
