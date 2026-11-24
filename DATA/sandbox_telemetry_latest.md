# sandbox_telemetry_parse — 2026-11-24 11:22:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2262991 lines=5016
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5001 |
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
| `chromeBrowserPssKb` | {'int': 5001} |
| `chromeGpuPssKb` | {'int': 5001} |
| `chromeOtherPssKb` | {'int': 5001} |
| `chromeProcesses` | {'int': 5001} |
| `chromeProfiles` | {'int': 5001} |
| `chromeRendererMaxPssKb` | {'int': 5001} |
| `chromeRendererPssKb` | {'int': 5001} |
| `chromeRenderers` | {'int': 5001} |
| `chromeTabs` | {'int': 5001} |
| `chromeTabsProbedProfiles` | {'int': 5001} |
| `chromeUtilityPssKb` | {'int': 5001} |
| `desktopPssKb` | {'int': 5001} |
| `hostPssKb` | {'int': 5001} |
| `kind` | {'str': 5001} |
| `memAvailableKb` | {'int': 5001} |
| `memTotalKb` | {'int': 5001} |
| `otherPssKb` | {'int': 5001} |
| `processes` | {'int': 5001} |
| `pssFallbackProcesses` | {'int': 5001} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
