# sandbox_telemetry_parse — 2026-11-11 19:40:26 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1787881 lines=3959
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3950 |
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
| `chromeBrowserPssKb` | {'int': 3950} |
| `chromeGpuPssKb` | {'int': 3950} |
| `chromeOtherPssKb` | {'int': 3950} |
| `chromeProcesses` | {'int': 3950} |
| `chromeProfiles` | {'int': 3950} |
| `chromeRendererMaxPssKb` | {'int': 3950} |
| `chromeRendererPssKb` | {'int': 3950} |
| `chromeRenderers` | {'int': 3950} |
| `chromeTabs` | {'int': 3950} |
| `chromeTabsProbedProfiles` | {'int': 3950} |
| `chromeUtilityPssKb` | {'int': 3950} |
| `desktopPssKb` | {'int': 3950} |
| `hostPssKb` | {'int': 3950} |
| `kind` | {'str': 3950} |
| `memAvailableKb` | {'int': 3950} |
| `memTotalKb` | {'int': 3950} |
| `otherPssKb` | {'int': 3950} |
| `processes` | {'int': 3950} |
| `pssFallbackProcesses` | {'int': 3950} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
