# sandbox_telemetry_parse — 2026-11-20 04:22:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1571058 lines=3483
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3472 |
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
| `chromeBrowserPssKb` | {'int': 3472} |
| `chromeGpuPssKb` | {'int': 3472} |
| `chromeOtherPssKb` | {'int': 3472} |
| `chromeProcesses` | {'int': 3472} |
| `chromeProfiles` | {'int': 3472} |
| `chromeRendererMaxPssKb` | {'int': 3472} |
| `chromeRendererPssKb` | {'int': 3472} |
| `chromeRenderers` | {'int': 3472} |
| `chromeTabs` | {'int': 3472} |
| `chromeTabsProbedProfiles` | {'int': 3472} |
| `chromeUtilityPssKb` | {'int': 3472} |
| `desktopPssKb` | {'int': 3472} |
| `hostPssKb` | {'int': 3472} |
| `kind` | {'str': 3472} |
| `memAvailableKb` | {'int': 3472} |
| `memTotalKb` | {'int': 3472} |
| `otherPssKb` | {'int': 3472} |
| `processes` | {'int': 3472} |
| `pssFallbackProcesses` | {'int': 3472} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
