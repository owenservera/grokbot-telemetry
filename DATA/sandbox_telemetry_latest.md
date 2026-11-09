# sandbox_telemetry_parse — 2026-11-09 19:37:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=812796 lines=1804
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1795 |
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
| `chromeBrowserPssKb` | {'int': 1795} |
| `chromeGpuPssKb` | {'int': 1795} |
| `chromeOtherPssKb` | {'int': 1795} |
| `chromeProcesses` | {'int': 1795} |
| `chromeProfiles` | {'int': 1795} |
| `chromeRendererMaxPssKb` | {'int': 1795} |
| `chromeRendererPssKb` | {'int': 1795} |
| `chromeRenderers` | {'int': 1795} |
| `chromeTabs` | {'int': 1795} |
| `chromeTabsProbedProfiles` | {'int': 1795} |
| `chromeUtilityPssKb` | {'int': 1795} |
| `desktopPssKb` | {'int': 1795} |
| `hostPssKb` | {'int': 1795} |
| `kind` | {'str': 1795} |
| `memAvailableKb` | {'int': 1795} |
| `memTotalKb` | {'int': 1795} |
| `otherPssKb` | {'int': 1795} |
| `processes` | {'int': 1795} |
| `pssFallbackProcesses` | {'int': 1795} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
