# sandbox_telemetry_parse — 2026-11-10 15:38:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1205065 lines=2671
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2662 |
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
| `chromeBrowserPssKb` | {'int': 2662} |
| `chromeGpuPssKb` | {'int': 2662} |
| `chromeOtherPssKb` | {'int': 2662} |
| `chromeProcesses` | {'int': 2662} |
| `chromeProfiles` | {'int': 2662} |
| `chromeRendererMaxPssKb` | {'int': 2662} |
| `chromeRendererPssKb` | {'int': 2662} |
| `chromeRenderers` | {'int': 2662} |
| `chromeTabs` | {'int': 2662} |
| `chromeTabsProbedProfiles` | {'int': 2662} |
| `chromeUtilityPssKb` | {'int': 2662} |
| `desktopPssKb` | {'int': 2662} |
| `hostPssKb` | {'int': 2662} |
| `kind` | {'str': 2662} |
| `memAvailableKb` | {'int': 2662} |
| `memTotalKb` | {'int': 2662} |
| `otherPssKb` | {'int': 2662} |
| `processes` | {'int': 2662} |
| `pssFallbackProcesses` | {'int': 2662} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
