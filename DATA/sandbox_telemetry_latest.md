# sandbox_telemetry_parse — 2026-11-25 21:14:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2926105 lines=6482
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6467 |
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
| `chromeBrowserPssKb` | {'int': 6467} |
| `chromeGpuPssKb` | {'int': 6467} |
| `chromeOtherPssKb` | {'int': 6467} |
| `chromeProcesses` | {'int': 6467} |
| `chromeProfiles` | {'int': 6467} |
| `chromeRendererMaxPssKb` | {'int': 6467} |
| `chromeRendererPssKb` | {'int': 6467} |
| `chromeRenderers` | {'int': 6467} |
| `chromeTabs` | {'int': 6467} |
| `chromeTabsProbedProfiles` | {'int': 6467} |
| `chromeUtilityPssKb` | {'int': 6467} |
| `desktopPssKb` | {'int': 6467} |
| `hostPssKb` | {'int': 6467} |
| `kind` | {'str': 6467} |
| `memAvailableKb` | {'int': 6467} |
| `memTotalKb` | {'int': 6467} |
| `otherPssKb` | {'int': 6467} |
| `processes` | {'int': 6467} |
| `pssFallbackProcesses` | {'int': 6467} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
