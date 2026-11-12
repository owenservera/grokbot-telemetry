# sandbox_telemetry_parse — 2026-11-12 10:41:21 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2088379 lines=4623
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4614 |
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
| `chromeBrowserPssKb` | {'int': 4614} |
| `chromeGpuPssKb` | {'int': 4614} |
| `chromeOtherPssKb` | {'int': 4614} |
| `chromeProcesses` | {'int': 4614} |
| `chromeProfiles` | {'int': 4614} |
| `chromeRendererMaxPssKb` | {'int': 4614} |
| `chromeRendererPssKb` | {'int': 4614} |
| `chromeRenderers` | {'int': 4614} |
| `chromeTabs` | {'int': 4614} |
| `chromeTabsProbedProfiles` | {'int': 4614} |
| `chromeUtilityPssKb` | {'int': 4614} |
| `desktopPssKb` | {'int': 4614} |
| `hostPssKb` | {'int': 4614} |
| `kind` | {'str': 4614} |
| `memAvailableKb` | {'int': 4614} |
| `memTotalKb` | {'int': 4614} |
| `otherPssKb` | {'int': 4614} |
| `processes` | {'int': 4614} |
| `pssFallbackProcesses` | {'int': 4614} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
