# sandbox_telemetry_parse — 2026-11-25 06:50:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2638480 lines=5846
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5831 |
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
| `chromeBrowserPssKb` | {'int': 5831} |
| `chromeGpuPssKb` | {'int': 5831} |
| `chromeOtherPssKb` | {'int': 5831} |
| `chromeProcesses` | {'int': 5831} |
| `chromeProfiles` | {'int': 5831} |
| `chromeRendererMaxPssKb` | {'int': 5831} |
| `chromeRendererPssKb` | {'int': 5831} |
| `chromeRenderers` | {'int': 5831} |
| `chromeTabs` | {'int': 5831} |
| `chromeTabsProbedProfiles` | {'int': 5831} |
| `chromeUtilityPssKb` | {'int': 5831} |
| `desktopPssKb` | {'int': 5831} |
| `hostPssKb` | {'int': 5831} |
| `kind` | {'str': 5831} |
| `memAvailableKb` | {'int': 5831} |
| `memTotalKb` | {'int': 5831} |
| `otherPssKb` | {'int': 5831} |
| `processes` | {'int': 5831} |
| `pssFallbackProcesses` | {'int': 5831} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
