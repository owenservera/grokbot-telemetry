# sandbox_telemetry_parse — 2026-11-20 05:05:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1581454 lines=3506
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3495 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3495} |
| `chromeGpuPssKb` | {'int': 3495} |
| `chromeOtherPssKb` | {'int': 3495} |
| `chromeProcesses` | {'int': 3495} |
| `chromeProfiles` | {'int': 3495} |
| `chromeRendererMaxPssKb` | {'int': 3495} |
| `chromeRendererPssKb` | {'int': 3495} |
| `chromeRenderers` | {'int': 3495} |
| `chromeTabs` | {'int': 3495} |
| `chromeTabsProbedProfiles` | {'int': 3495} |
| `chromeUtilityPssKb` | {'int': 3495} |
| `desktopPssKb` | {'int': 3495} |
| `hostPssKb` | {'int': 3495} |
| `kind` | {'str': 3495} |
| `memAvailableKb` | {'int': 3495} |
| `memTotalKb` | {'int': 3495} |
| `otherPssKb` | {'int': 3495} |
| `processes` | {'int': 3495} |
| `pssFallbackProcesses` | {'int': 3495} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
