# sandbox_telemetry_parse — 2026-11-07 07:46:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=366619 lines=818
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 809 |
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
| `chromeBrowserPssKb` | {'int': 809} |
| `chromeGpuPssKb` | {'int': 809} |
| `chromeOtherPssKb` | {'int': 809} |
| `chromeProcesses` | {'int': 809} |
| `chromeProfiles` | {'int': 809} |
| `chromeRendererMaxPssKb` | {'int': 809} |
| `chromeRendererPssKb` | {'int': 809} |
| `chromeRenderers` | {'int': 809} |
| `chromeTabs` | {'int': 809} |
| `chromeTabsProbedProfiles` | {'int': 809} |
| `chromeUtilityPssKb` | {'int': 809} |
| `desktopPssKb` | {'int': 809} |
| `hostPssKb` | {'int': 809} |
| `kind` | {'str': 809} |
| `memAvailableKb` | {'int': 809} |
| `memTotalKb` | {'int': 809} |
| `otherPssKb` | {'int': 809} |
| `processes` | {'int': 809} |
| `pssFallbackProcesses` | {'int': 809} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
