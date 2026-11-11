# sandbox_telemetry_parse — 2026-11-11 17:27:34 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1737637 lines=3848
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3839 |
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
| `chromeBrowserPssKb` | {'int': 3839} |
| `chromeGpuPssKb` | {'int': 3839} |
| `chromeOtherPssKb` | {'int': 3839} |
| `chromeProcesses` | {'int': 3839} |
| `chromeProfiles` | {'int': 3839} |
| `chromeRendererMaxPssKb` | {'int': 3839} |
| `chromeRendererPssKb` | {'int': 3839} |
| `chromeRenderers` | {'int': 3839} |
| `chromeTabs` | {'int': 3839} |
| `chromeTabsProbedProfiles` | {'int': 3839} |
| `chromeUtilityPssKb` | {'int': 3839} |
| `desktopPssKb` | {'int': 3839} |
| `hostPssKb` | {'int': 3839} |
| `kind` | {'str': 3839} |
| `memAvailableKb` | {'int': 3839} |
| `memTotalKb` | {'int': 3839} |
| `otherPssKb` | {'int': 3839} |
| `processes` | {'int': 3839} |
| `pssFallbackProcesses` | {'int': 3839} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
