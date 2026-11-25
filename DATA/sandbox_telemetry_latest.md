# sandbox_telemetry_parse — 2026-11-25 19:47:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2898517 lines=6421
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6406 |
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
| `chromeBrowserPssKb` | {'int': 6406} |
| `chromeGpuPssKb` | {'int': 6406} |
| `chromeOtherPssKb` | {'int': 6406} |
| `chromeProcesses` | {'int': 6406} |
| `chromeProfiles` | {'int': 6406} |
| `chromeRendererMaxPssKb` | {'int': 6406} |
| `chromeRendererPssKb` | {'int': 6406} |
| `chromeRenderers` | {'int': 6406} |
| `chromeTabs` | {'int': 6406} |
| `chromeTabsProbedProfiles` | {'int': 6406} |
| `chromeUtilityPssKb` | {'int': 6406} |
| `desktopPssKb` | {'int': 6406} |
| `hostPssKb` | {'int': 6406} |
| `kind` | {'str': 6406} |
| `memAvailableKb` | {'int': 6406} |
| `memTotalKb` | {'int': 6406} |
| `otherPssKb` | {'int': 6406} |
| `processes` | {'int': 6406} |
| `pssFallbackProcesses` | {'int': 6406} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
