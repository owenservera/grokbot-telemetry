# sandbox_telemetry_parse — 2026-11-20 05:42:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1590494 lines=3526
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3515 |
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
| `chromeBrowserPssKb` | {'int': 3515} |
| `chromeGpuPssKb` | {'int': 3515} |
| `chromeOtherPssKb` | {'int': 3515} |
| `chromeProcesses` | {'int': 3515} |
| `chromeProfiles` | {'int': 3515} |
| `chromeRendererMaxPssKb` | {'int': 3515} |
| `chromeRendererPssKb` | {'int': 3515} |
| `chromeRenderers` | {'int': 3515} |
| `chromeTabs` | {'int': 3515} |
| `chromeTabsProbedProfiles` | {'int': 3515} |
| `chromeUtilityPssKb` | {'int': 3515} |
| `desktopPssKb` | {'int': 3515} |
| `hostPssKb` | {'int': 3515} |
| `kind` | {'str': 3515} |
| `memAvailableKb` | {'int': 3515} |
| `memTotalKb` | {'int': 3515} |
| `otherPssKb` | {'int': 3515} |
| `processes` | {'int': 3515} |
| `pssFallbackProcesses` | {'int': 3515} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
