# sandbox_telemetry_parse — 2026-11-11 21:09:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1817294 lines=4024
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4015 |
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
| `chromeBrowserPssKb` | {'int': 4015} |
| `chromeGpuPssKb` | {'int': 4015} |
| `chromeOtherPssKb` | {'int': 4015} |
| `chromeProcesses` | {'int': 4015} |
| `chromeProfiles` | {'int': 4015} |
| `chromeRendererMaxPssKb` | {'int': 4015} |
| `chromeRendererPssKb` | {'int': 4015} |
| `chromeRenderers` | {'int': 4015} |
| `chromeTabs` | {'int': 4015} |
| `chromeTabsProbedProfiles` | {'int': 4015} |
| `chromeUtilityPssKb` | {'int': 4015} |
| `desktopPssKb` | {'int': 4015} |
| `hostPssKb` | {'int': 4015} |
| `kind` | {'str': 4015} |
| `memAvailableKb` | {'int': 4015} |
| `memTotalKb` | {'int': 4015} |
| `otherPssKb` | {'int': 4015} |
| `processes` | {'int': 4015} |
| `pssFallbackProcesses` | {'int': 4015} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
