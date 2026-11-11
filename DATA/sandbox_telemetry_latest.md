# sandbox_telemetry_parse — 2026-11-11 01:35:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1418716 lines=3143
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3134 |
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
| `chromeBrowserPssKb` | {'int': 3134} |
| `chromeGpuPssKb` | {'int': 3134} |
| `chromeOtherPssKb` | {'int': 3134} |
| `chromeProcesses` | {'int': 3134} |
| `chromeProfiles` | {'int': 3134} |
| `chromeRendererMaxPssKb` | {'int': 3134} |
| `chromeRendererPssKb` | {'int': 3134} |
| `chromeRenderers` | {'int': 3134} |
| `chromeTabs` | {'int': 3134} |
| `chromeTabsProbedProfiles` | {'int': 3134} |
| `chromeUtilityPssKb` | {'int': 3134} |
| `desktopPssKb` | {'int': 3134} |
| `hostPssKb` | {'int': 3134} |
| `kind` | {'str': 3134} |
| `memAvailableKb` | {'int': 3134} |
| `memTotalKb` | {'int': 3134} |
| `otherPssKb` | {'int': 3134} |
| `processes` | {'int': 3134} |
| `pssFallbackProcesses` | {'int': 3134} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
