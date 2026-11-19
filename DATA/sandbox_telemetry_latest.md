# sandbox_telemetry_parse — 2026-11-19 10:49:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1236589 lines=2742
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2733 |
| `egress_tunnel` | 5 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 2733} |
| `chromeGpuPssKb` | {'int': 2733} |
| `chromeOtherPssKb` | {'int': 2733} |
| `chromeProcesses` | {'int': 2733} |
| `chromeProfiles` | {'int': 2733} |
| `chromeRendererMaxPssKb` | {'int': 2733} |
| `chromeRendererPssKb` | {'int': 2733} |
| `chromeRenderers` | {'int': 2733} |
| `chromeTabs` | {'int': 2733} |
| `chromeTabsProbedProfiles` | {'int': 2733} |
| `chromeUtilityPssKb` | {'int': 2733} |
| `desktopPssKb` | {'int': 2733} |
| `hostPssKb` | {'int': 2733} |
| `kind` | {'str': 2733} |
| `memAvailableKb` | {'int': 2733} |
| `memTotalKb` | {'int': 2733} |
| `otherPssKb` | {'int': 2733} |
| `processes` | {'int': 2733} |
| `pssFallbackProcesses` | {'int': 2733} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
