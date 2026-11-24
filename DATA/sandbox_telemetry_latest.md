# sandbox_telemetry_parse — 2026-11-24 13:20:54 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2298712 lines=5095
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5080 |
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
| `chromeBrowserPssKb` | {'int': 5080} |
| `chromeGpuPssKb` | {'int': 5080} |
| `chromeOtherPssKb` | {'int': 5080} |
| `chromeProcesses` | {'int': 5080} |
| `chromeProfiles` | {'int': 5080} |
| `chromeRendererMaxPssKb` | {'int': 5080} |
| `chromeRendererPssKb` | {'int': 5080} |
| `chromeRenderers` | {'int': 5080} |
| `chromeTabs` | {'int': 5080} |
| `chromeTabsProbedProfiles` | {'int': 5080} |
| `chromeUtilityPssKb` | {'int': 5080} |
| `desktopPssKb` | {'int': 5080} |
| `hostPssKb` | {'int': 5080} |
| `kind` | {'str': 5080} |
| `memAvailableKb` | {'int': 5080} |
| `memTotalKb` | {'int': 5080} |
| `otherPssKb` | {'int': 5080} |
| `processes` | {'int': 5080} |
| `pssFallbackProcesses` | {'int': 5080} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
