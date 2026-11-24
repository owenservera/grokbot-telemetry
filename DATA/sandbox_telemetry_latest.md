# sandbox_telemetry_parse — 2026-11-24 17:02:34 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2367065 lines=5246
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5231 |
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
| `chromeBrowserPssKb` | {'int': 5231} |
| `chromeGpuPssKb` | {'int': 5231} |
| `chromeOtherPssKb` | {'int': 5231} |
| `chromeProcesses` | {'int': 5231} |
| `chromeProfiles` | {'int': 5231} |
| `chromeRendererMaxPssKb` | {'int': 5231} |
| `chromeRendererPssKb` | {'int': 5231} |
| `chromeRenderers` | {'int': 5231} |
| `chromeTabs` | {'int': 5231} |
| `chromeTabsProbedProfiles` | {'int': 5231} |
| `chromeUtilityPssKb` | {'int': 5231} |
| `desktopPssKb` | {'int': 5231} |
| `hostPssKb` | {'int': 5231} |
| `kind` | {'str': 5231} |
| `memAvailableKb` | {'int': 5231} |
| `memTotalKb` | {'int': 5231} |
| `otherPssKb` | {'int': 5231} |
| `processes` | {'int': 5231} |
| `pssFallbackProcesses` | {'int': 5231} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
