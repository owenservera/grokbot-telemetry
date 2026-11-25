# sandbox_telemetry_parse — 2026-11-25 10:12:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2711776 lines=6008
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5993 |
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
| `chromeBrowserPssKb` | {'int': 5993} |
| `chromeGpuPssKb` | {'int': 5993} |
| `chromeOtherPssKb` | {'int': 5993} |
| `chromeProcesses` | {'int': 5993} |
| `chromeProfiles` | {'int': 5993} |
| `chromeRendererMaxPssKb` | {'int': 5993} |
| `chromeRendererPssKb` | {'int': 5993} |
| `chromeRenderers` | {'int': 5993} |
| `chromeTabs` | {'int': 5993} |
| `chromeTabsProbedProfiles` | {'int': 5993} |
| `chromeUtilityPssKb` | {'int': 5993} |
| `desktopPssKb` | {'int': 5993} |
| `hostPssKb` | {'int': 5993} |
| `kind` | {'str': 5993} |
| `memAvailableKb` | {'int': 5993} |
| `memTotalKb` | {'int': 5993} |
| `otherPssKb` | {'int': 5993} |
| `processes` | {'int': 5993} |
| `pssFallbackProcesses` | {'int': 5993} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
