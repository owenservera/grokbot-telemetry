# sandbox_telemetry_parse — 2026-11-19 14:56:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1321188 lines=2929
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2920 |
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
| `chromeBrowserPssKb` | {'int': 2920} |
| `chromeGpuPssKb` | {'int': 2920} |
| `chromeOtherPssKb` | {'int': 2920} |
| `chromeProcesses` | {'int': 2920} |
| `chromeProfiles` | {'int': 2920} |
| `chromeRendererMaxPssKb` | {'int': 2920} |
| `chromeRendererPssKb` | {'int': 2920} |
| `chromeRenderers` | {'int': 2920} |
| `chromeTabs` | {'int': 2920} |
| `chromeTabsProbedProfiles` | {'int': 2920} |
| `chromeUtilityPssKb` | {'int': 2920} |
| `desktopPssKb` | {'int': 2920} |
| `hostPssKb` | {'int': 2920} |
| `kind` | {'str': 2920} |
| `memAvailableKb` | {'int': 2920} |
| `memTotalKb` | {'int': 2920} |
| `otherPssKb` | {'int': 2920} |
| `processes` | {'int': 2920} |
| `pssFallbackProcesses` | {'int': 2920} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
