# sandbox_telemetry_parse — 2026-11-25 20:09:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2904845 lines=6435
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6420 |
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
| `chromeBrowserPssKb` | {'int': 6420} |
| `chromeGpuPssKb` | {'int': 6420} |
| `chromeOtherPssKb` | {'int': 6420} |
| `chromeProcesses` | {'int': 6420} |
| `chromeProfiles` | {'int': 6420} |
| `chromeRendererMaxPssKb` | {'int': 6420} |
| `chromeRendererPssKb` | {'int': 6420} |
| `chromeRenderers` | {'int': 6420} |
| `chromeTabs` | {'int': 6420} |
| `chromeTabsProbedProfiles` | {'int': 6420} |
| `chromeUtilityPssKb` | {'int': 6420} |
| `desktopPssKb` | {'int': 6420} |
| `hostPssKb` | {'int': 6420} |
| `kind` | {'str': 6420} |
| `memAvailableKb` | {'int': 6420} |
| `memTotalKb` | {'int': 6420} |
| `otherPssKb` | {'int': 6420} |
| `processes` | {'int': 6420} |
| `pssFallbackProcesses` | {'int': 6420} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
