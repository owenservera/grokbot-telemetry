# sandbox_telemetry_parse — 2026-11-25 04:27:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2592819 lines=5745
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5730 |
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
| `chromeBrowserPssKb` | {'int': 5730} |
| `chromeGpuPssKb` | {'int': 5730} |
| `chromeOtherPssKb` | {'int': 5730} |
| `chromeProcesses` | {'int': 5730} |
| `chromeProfiles` | {'int': 5730} |
| `chromeRendererMaxPssKb` | {'int': 5730} |
| `chromeRendererPssKb` | {'int': 5730} |
| `chromeRenderers` | {'int': 5730} |
| `chromeTabs` | {'int': 5730} |
| `chromeTabsProbedProfiles` | {'int': 5730} |
| `chromeUtilityPssKb` | {'int': 5730} |
| `desktopPssKb` | {'int': 5730} |
| `hostPssKb` | {'int': 5730} |
| `kind` | {'str': 5730} |
| `memAvailableKb` | {'int': 5730} |
| `memTotalKb` | {'int': 5730} |
| `otherPssKb` | {'int': 5730} |
| `processes` | {'int': 5730} |
| `pssFallbackProcesses` | {'int': 5730} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
