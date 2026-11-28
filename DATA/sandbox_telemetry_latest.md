# sandbox_telemetry_parse — 2026-11-28 20:47:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1053073 lines=2334
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2326 |
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
| `chromeBrowserPssKb` | {'int': 2326} |
| `chromeGpuPssKb` | {'int': 2326} |
| `chromeOtherPssKb` | {'int': 2326} |
| `chromeProcesses` | {'int': 2326} |
| `chromeProfiles` | {'int': 2326} |
| `chromeRendererMaxPssKb` | {'int': 2326} |
| `chromeRendererPssKb` | {'int': 2326} |
| `chromeRenderers` | {'int': 2326} |
| `chromeTabs` | {'int': 2326} |
| `chromeTabsProbedProfiles` | {'int': 2326} |
| `chromeUtilityPssKb` | {'int': 2326} |
| `desktopPssKb` | {'int': 2326} |
| `hostPssKb` | {'int': 2326} |
| `kind` | {'str': 2326} |
| `memAvailableKb` | {'int': 2326} |
| `memTotalKb` | {'int': 2326} |
| `otherPssKb` | {'int': 2326} |
| `processes` | {'int': 2326} |
| `pssFallbackProcesses` | {'int': 2326} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
