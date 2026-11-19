# sandbox_telemetry_parse — 2026-11-19 16:34:09 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1354403 lines=3004
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2993 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 2993} |
| `chromeGpuPssKb` | {'int': 2993} |
| `chromeOtherPssKb` | {'int': 2993} |
| `chromeProcesses` | {'int': 2993} |
| `chromeProfiles` | {'int': 2993} |
| `chromeRendererMaxPssKb` | {'int': 2993} |
| `chromeRendererPssKb` | {'int': 2993} |
| `chromeRenderers` | {'int': 2993} |
| `chromeTabs` | {'int': 2993} |
| `chromeTabsProbedProfiles` | {'int': 2993} |
| `chromeUtilityPssKb` | {'int': 2993} |
| `desktopPssKb` | {'int': 2993} |
| `hostPssKb` | {'int': 2993} |
| `kind` | {'str': 2993} |
| `memAvailableKb` | {'int': 2993} |
| `memTotalKb` | {'int': 2993} |
| `otherPssKb` | {'int': 2993} |
| `processes` | {'int': 2993} |
| `pssFallbackProcesses` | {'int': 2993} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
