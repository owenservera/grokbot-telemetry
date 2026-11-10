# sandbox_telemetry_parse — 2026-11-10 13:52:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1167051 lines=2587
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2578 |
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
| `chromeBrowserPssKb` | {'int': 2578} |
| `chromeGpuPssKb` | {'int': 2578} |
| `chromeOtherPssKb` | {'int': 2578} |
| `chromeProcesses` | {'int': 2578} |
| `chromeProfiles` | {'int': 2578} |
| `chromeRendererMaxPssKb` | {'int': 2578} |
| `chromeRendererPssKb` | {'int': 2578} |
| `chromeRenderers` | {'int': 2578} |
| `chromeTabs` | {'int': 2578} |
| `chromeTabsProbedProfiles` | {'int': 2578} |
| `chromeUtilityPssKb` | {'int': 2578} |
| `desktopPssKb` | {'int': 2578} |
| `hostPssKb` | {'int': 2578} |
| `kind` | {'str': 2578} |
| `memAvailableKb` | {'int': 2578} |
| `memTotalKb` | {'int': 2578} |
| `otherPssKb` | {'int': 2578} |
| `processes` | {'int': 2578} |
| `pssFallbackProcesses` | {'int': 2578} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
