# sandbox_telemetry_parse — 2026-11-26 00:16:36 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2990779 lines=6625
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6610 |
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
| `chromeBrowserPssKb` | {'int': 6610} |
| `chromeGpuPssKb` | {'int': 6610} |
| `chromeOtherPssKb` | {'int': 6610} |
| `chromeProcesses` | {'int': 6610} |
| `chromeProfiles` | {'int': 6610} |
| `chromeRendererMaxPssKb` | {'int': 6610} |
| `chromeRendererPssKb` | {'int': 6610} |
| `chromeRenderers` | {'int': 6610} |
| `chromeTabs` | {'int': 6610} |
| `chromeTabsProbedProfiles` | {'int': 6610} |
| `chromeUtilityPssKb` | {'int': 6610} |
| `desktopPssKb` | {'int': 6610} |
| `hostPssKb` | {'int': 6610} |
| `kind` | {'str': 6610} |
| `memAvailableKb` | {'int': 6610} |
| `memTotalKb` | {'int': 6610} |
| `otherPssKb` | {'int': 6610} |
| `processes` | {'int': 6610} |
| `pssFallbackProcesses` | {'int': 6610} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
