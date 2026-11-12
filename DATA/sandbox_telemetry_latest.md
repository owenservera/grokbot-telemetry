# sandbox_telemetry_parse — 2026-11-12 20:09:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2308009 lines=5108
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5099 |
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
| `chromeBrowserPssKb` | {'int': 5099} |
| `chromeGpuPssKb` | {'int': 5099} |
| `chromeOtherPssKb` | {'int': 5099} |
| `chromeProcesses` | {'int': 5099} |
| `chromeProfiles` | {'int': 5099} |
| `chromeRendererMaxPssKb` | {'int': 5099} |
| `chromeRendererPssKb` | {'int': 5099} |
| `chromeRenderers` | {'int': 5099} |
| `chromeTabs` | {'int': 5099} |
| `chromeTabsProbedProfiles` | {'int': 5099} |
| `chromeUtilityPssKb` | {'int': 5099} |
| `desktopPssKb` | {'int': 5099} |
| `hostPssKb` | {'int': 5099} |
| `kind` | {'str': 5099} |
| `memAvailableKb` | {'int': 5099} |
| `memTotalKb` | {'int': 5099} |
| `otherPssKb` | {'int': 5099} |
| `processes` | {'int': 5099} |
| `pssFallbackProcesses` | {'int': 5099} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
