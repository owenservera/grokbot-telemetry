# sandbox_telemetry_parse — 2026-11-24 04:39:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2132757 lines=4728
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4713 |
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
| `chromeBrowserPssKb` | {'int': 4713} |
| `chromeGpuPssKb` | {'int': 4713} |
| `chromeOtherPssKb` | {'int': 4713} |
| `chromeProcesses` | {'int': 4713} |
| `chromeProfiles` | {'int': 4713} |
| `chromeRendererMaxPssKb` | {'int': 4713} |
| `chromeRendererPssKb` | {'int': 4713} |
| `chromeRenderers` | {'int': 4713} |
| `chromeTabs` | {'int': 4713} |
| `chromeTabsProbedProfiles` | {'int': 4713} |
| `chromeUtilityPssKb` | {'int': 4713} |
| `desktopPssKb` | {'int': 4713} |
| `hostPssKb` | {'int': 4713} |
| `kind` | {'str': 4713} |
| `memAvailableKb` | {'int': 4713} |
| `memTotalKb` | {'int': 4713} |
| `otherPssKb` | {'int': 4713} |
| `processes` | {'int': 4713} |
| `pssFallbackProcesses` | {'int': 4713} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
