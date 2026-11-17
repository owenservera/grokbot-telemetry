# sandbox_telemetry_parse — 2026-11-17 01:44:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=199542 lines=447
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 440 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `chromeBrowserPssKb` | {'int': 440} |
| `chromeGpuPssKb` | {'int': 440} |
| `chromeOtherPssKb` | {'int': 440} |
| `chromeProcesses` | {'int': 440} |
| `chromeProfiles` | {'int': 440} |
| `chromeRendererMaxPssKb` | {'int': 440} |
| `chromeRendererPssKb` | {'int': 440} |
| `chromeRenderers` | {'int': 440} |
| `chromeTabs` | {'int': 440} |
| `chromeTabsProbedProfiles` | {'int': 440} |
| `chromeUtilityPssKb` | {'int': 440} |
| `desktopPssKb` | {'int': 440} |
| `hostPssKb` | {'int': 440} |
| `kind` | {'str': 440} |
| `memAvailableKb` | {'int': 440} |
| `memTotalKb` | {'int': 440} |
| `otherPssKb` | {'int': 440} |
| `processes` | {'int': 440} |
| `pssFallbackProcesses` | {'int': 440} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
