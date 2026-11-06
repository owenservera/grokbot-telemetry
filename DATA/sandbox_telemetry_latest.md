# sandbox_telemetry_parse — 2026-11-07 00:52:37 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=240912 lines=540
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 531 |
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
| `chromeBrowserPssKb` | {'int': 531} |
| `chromeGpuPssKb` | {'int': 531} |
| `chromeOtherPssKb` | {'int': 531} |
| `chromeProcesses` | {'int': 531} |
| `chromeProfiles` | {'int': 531} |
| `chromeRendererMaxPssKb` | {'int': 531} |
| `chromeRendererPssKb` | {'int': 531} |
| `chromeRenderers` | {'int': 531} |
| `chromeTabs` | {'int': 531} |
| `chromeTabsProbedProfiles` | {'int': 531} |
| `chromeUtilityPssKb` | {'int': 531} |
| `desktopPssKb` | {'int': 531} |
| `hostPssKb` | {'int': 531} |
| `kind` | {'str': 531} |
| `memAvailableKb` | {'int': 531} |
| `memTotalKb` | {'int': 531} |
| `otherPssKb` | {'int': 531} |
| `processes` | {'int': 531} |
| `pssFallbackProcesses` | {'int': 531} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
