# sandbox_telemetry_parse — 2026-11-27 14:48:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=463349 lines=1031
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1023 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

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
| `chromeBrowserPssKb` | {'int': 1023} |
| `chromeGpuPssKb` | {'int': 1023} |
| `chromeOtherPssKb` | {'int': 1023} |
| `chromeProcesses` | {'int': 1023} |
| `chromeProfiles` | {'int': 1023} |
| `chromeRendererMaxPssKb` | {'int': 1023} |
| `chromeRendererPssKb` | {'int': 1023} |
| `chromeRenderers` | {'int': 1023} |
| `chromeTabs` | {'int': 1023} |
| `chromeTabsProbedProfiles` | {'int': 1023} |
| `chromeUtilityPssKb` | {'int': 1023} |
| `desktopPssKb` | {'int': 1023} |
| `hostPssKb` | {'int': 1023} |
| `kind` | {'str': 1023} |
| `memAvailableKb` | {'int': 1023} |
| `memTotalKb` | {'int': 1023} |
| `otherPssKb` | {'int': 1023} |
| `processes` | {'int': 1023} |
| `pssFallbackProcesses` | {'int': 1023} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
