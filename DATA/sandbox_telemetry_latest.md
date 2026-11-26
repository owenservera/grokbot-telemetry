# sandbox_telemetry_parse — 2026-11-26 16:56:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3341102 lines=7401
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7384 |
| `egress_tunnel` | 13 |
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
| `attempt` | {'int': 13} |
| `exitStatus` | {'int': 6} |
| `kind` | {'str': 13} |
| `outcome` | {'str': 13} |
| `runtimeS` | {'int': 6} |

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
| `chromeBrowserPssKb` | {'int': 7384} |
| `chromeGpuPssKb` | {'int': 7384} |
| `chromeOtherPssKb` | {'int': 7384} |
| `chromeProcesses` | {'int': 7384} |
| `chromeProfiles` | {'int': 7384} |
| `chromeRendererMaxPssKb` | {'int': 7384} |
| `chromeRendererPssKb` | {'int': 7384} |
| `chromeRenderers` | {'int': 7384} |
| `chromeTabs` | {'int': 7384} |
| `chromeTabsProbedProfiles` | {'int': 7384} |
| `chromeUtilityPssKb` | {'int': 7384} |
| `desktopPssKb` | {'int': 7384} |
| `hostPssKb` | {'int': 7384} |
| `kind` | {'str': 7384} |
| `memAvailableKb` | {'int': 7384} |
| `memTotalKb` | {'int': 7384} |
| `otherPssKb` | {'int': 7384} |
| `processes` | {'int': 7384} |
| `pssFallbackProcesses` | {'int': 7384} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
