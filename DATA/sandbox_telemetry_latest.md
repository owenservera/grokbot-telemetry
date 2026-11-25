# sandbox_telemetry_parse — 2026-11-25 09:32:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2695027 lines=5971
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5956 |
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
| `chromeBrowserPssKb` | {'int': 5956} |
| `chromeGpuPssKb` | {'int': 5956} |
| `chromeOtherPssKb` | {'int': 5956} |
| `chromeProcesses` | {'int': 5956} |
| `chromeProfiles` | {'int': 5956} |
| `chromeRendererMaxPssKb` | {'int': 5956} |
| `chromeRendererPssKb` | {'int': 5956} |
| `chromeRenderers` | {'int': 5956} |
| `chromeTabs` | {'int': 5956} |
| `chromeTabsProbedProfiles` | {'int': 5956} |
| `chromeUtilityPssKb` | {'int': 5956} |
| `desktopPssKb` | {'int': 5956} |
| `hostPssKb` | {'int': 5956} |
| `kind` | {'str': 5956} |
| `memAvailableKb` | {'int': 5956} |
| `memTotalKb` | {'int': 5956} |
| `otherPssKb` | {'int': 5956} |
| `processes` | {'int': 5956} |
| `pssFallbackProcesses` | {'int': 5956} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
