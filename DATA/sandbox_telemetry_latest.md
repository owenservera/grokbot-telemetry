# sandbox_telemetry_parse — 2026-11-20 17:00:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1807291 lines=4007
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3994 |
| `egress_tunnel` | 9 |
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
| `attempt` | {'int': 9} |
| `exitStatus` | {'int': 4} |
| `kind` | {'str': 9} |
| `outcome` | {'str': 9} |
| `runtimeS` | {'int': 4} |

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
| `chromeBrowserPssKb` | {'int': 3994} |
| `chromeGpuPssKb` | {'int': 3994} |
| `chromeOtherPssKb` | {'int': 3994} |
| `chromeProcesses` | {'int': 3994} |
| `chromeProfiles` | {'int': 3994} |
| `chromeRendererMaxPssKb` | {'int': 3994} |
| `chromeRendererPssKb` | {'int': 3994} |
| `chromeRenderers` | {'int': 3994} |
| `chromeTabs` | {'int': 3994} |
| `chromeTabsProbedProfiles` | {'int': 3994} |
| `chromeUtilityPssKb` | {'int': 3994} |
| `desktopPssKb` | {'int': 3994} |
| `hostPssKb` | {'int': 3994} |
| `kind` | {'str': 3994} |
| `memAvailableKb` | {'int': 3994} |
| `memTotalKb` | {'int': 3994} |
| `otherPssKb` | {'int': 3994} |
| `processes` | {'int': 3994} |
| `pssFallbackProcesses` | {'int': 3994} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
