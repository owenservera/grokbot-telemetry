# sandbox_telemetry_parse — 2026-11-27 23:01:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=626769 lines=1392
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1384 |
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
| `chromeBrowserPssKb` | {'int': 1384} |
| `chromeGpuPssKb` | {'int': 1384} |
| `chromeOtherPssKb` | {'int': 1384} |
| `chromeProcesses` | {'int': 1384} |
| `chromeProfiles` | {'int': 1384} |
| `chromeRendererMaxPssKb` | {'int': 1384} |
| `chromeRendererPssKb` | {'int': 1384} |
| `chromeRenderers` | {'int': 1384} |
| `chromeTabs` | {'int': 1384} |
| `chromeTabsProbedProfiles` | {'int': 1384} |
| `chromeUtilityPssKb` | {'int': 1384} |
| `desktopPssKb` | {'int': 1384} |
| `hostPssKb` | {'int': 1384} |
| `kind` | {'str': 1384} |
| `memAvailableKb` | {'int': 1384} |
| `memTotalKb` | {'int': 1384} |
| `otherPssKb` | {'int': 1384} |
| `processes` | {'int': 1384} |
| `pssFallbackProcesses` | {'int': 1384} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
