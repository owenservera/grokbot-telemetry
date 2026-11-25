# sandbox_telemetry_parse — 2026-11-25 13:33:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2776884 lines=6152
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6137 |
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
| `chromeBrowserPssKb` | {'int': 6137} |
| `chromeGpuPssKb` | {'int': 6137} |
| `chromeOtherPssKb` | {'int': 6137} |
| `chromeProcesses` | {'int': 6137} |
| `chromeProfiles` | {'int': 6137} |
| `chromeRendererMaxPssKb` | {'int': 6137} |
| `chromeRendererPssKb` | {'int': 6137} |
| `chromeRenderers` | {'int': 6137} |
| `chromeTabs` | {'int': 6137} |
| `chromeTabsProbedProfiles` | {'int': 6137} |
| `chromeUtilityPssKb` | {'int': 6137} |
| `desktopPssKb` | {'int': 6137} |
| `hostPssKb` | {'int': 6137} |
| `kind` | {'str': 6137} |
| `memAvailableKb` | {'int': 6137} |
| `memTotalKb` | {'int': 6137} |
| `otherPssKb` | {'int': 6137} |
| `processes` | {'int': 6137} |
| `pssFallbackProcesses` | {'int': 6137} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
