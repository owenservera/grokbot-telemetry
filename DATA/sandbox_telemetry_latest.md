# sandbox_telemetry_parse — 2026-11-24 09:38:33 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2229084 lines=4941
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4926 |
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
| `chromeBrowserPssKb` | {'int': 4926} |
| `chromeGpuPssKb` | {'int': 4926} |
| `chromeOtherPssKb` | {'int': 4926} |
| `chromeProcesses` | {'int': 4926} |
| `chromeProfiles` | {'int': 4926} |
| `chromeRendererMaxPssKb` | {'int': 4926} |
| `chromeRendererPssKb` | {'int': 4926} |
| `chromeRenderers` | {'int': 4926} |
| `chromeTabs` | {'int': 4926} |
| `chromeTabsProbedProfiles` | {'int': 4926} |
| `chromeUtilityPssKb` | {'int': 4926} |
| `desktopPssKb` | {'int': 4926} |
| `hostPssKb` | {'int': 4926} |
| `kind` | {'str': 4926} |
| `memAvailableKb` | {'int': 4926} |
| `memTotalKb` | {'int': 4926} |
| `otherPssKb` | {'int': 4926} |
| `processes` | {'int': 4926} |
| `pssFallbackProcesses` | {'int': 4926} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
