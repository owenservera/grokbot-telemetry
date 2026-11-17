# sandbox_telemetry_parse — 2026-11-17 11:40:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=371790 lines=828
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 821 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 821} |
| `chromeGpuPssKb` | {'int': 821} |
| `chromeOtherPssKb` | {'int': 821} |
| `chromeProcesses` | {'int': 821} |
| `chromeProfiles` | {'int': 821} |
| `chromeRendererMaxPssKb` | {'int': 821} |
| `chromeRendererPssKb` | {'int': 821} |
| `chromeRenderers` | {'int': 821} |
| `chromeTabs` | {'int': 821} |
| `chromeTabsProbedProfiles` | {'int': 821} |
| `chromeUtilityPssKb` | {'int': 821} |
| `desktopPssKb` | {'int': 821} |
| `hostPssKb` | {'int': 821} |
| `kind` | {'str': 821} |
| `memAvailableKb` | {'int': 821} |
| `memTotalKb` | {'int': 821} |
| `otherPssKb` | {'int': 821} |
| `processes` | {'int': 821} |
| `pssFallbackProcesses` | {'int': 821} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
