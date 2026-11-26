# sandbox_telemetry_parse — 2026-11-26 16:58:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3342008 lines=7403
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7386 |
| `egress_tunnel` | 13 |
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
| `attempt` | {'int': 13} |
| `exitStatus` | {'int': 6} |
| `kind` | {'str': 13} |
| `outcome` | {'str': 13} |
| `runtimeS` | {'int': 6} |

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
| `chromeBrowserPssKb` | {'int': 7386} |
| `chromeGpuPssKb` | {'int': 7386} |
| `chromeOtherPssKb` | {'int': 7386} |
| `chromeProcesses` | {'int': 7386} |
| `chromeProfiles` | {'int': 7386} |
| `chromeRendererMaxPssKb` | {'int': 7386} |
| `chromeRendererPssKb` | {'int': 7386} |
| `chromeRenderers` | {'int': 7386} |
| `chromeTabs` | {'int': 7386} |
| `chromeTabsProbedProfiles` | {'int': 7386} |
| `chromeUtilityPssKb` | {'int': 7386} |
| `desktopPssKb` | {'int': 7386} |
| `hostPssKb` | {'int': 7386} |
| `kind` | {'str': 7386} |
| `memAvailableKb` | {'int': 7386} |
| `memTotalKb` | {'int': 7386} |
| `otherPssKb` | {'int': 7386} |
| `processes` | {'int': 7386} |
| `pssFallbackProcesses` | {'int': 7386} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
