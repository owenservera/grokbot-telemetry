# sandbox_telemetry_parse — 2026-11-25 06:05:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2621749 lines=5809
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5794 |
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
| `chromeBrowserPssKb` | {'int': 5794} |
| `chromeGpuPssKb` | {'int': 5794} |
| `chromeOtherPssKb` | {'int': 5794} |
| `chromeProcesses` | {'int': 5794} |
| `chromeProfiles` | {'int': 5794} |
| `chromeRendererMaxPssKb` | {'int': 5794} |
| `chromeRendererPssKb` | {'int': 5794} |
| `chromeRenderers` | {'int': 5794} |
| `chromeTabs` | {'int': 5794} |
| `chromeTabsProbedProfiles` | {'int': 5794} |
| `chromeUtilityPssKb` | {'int': 5794} |
| `desktopPssKb` | {'int': 5794} |
| `hostPssKb` | {'int': 5794} |
| `kind` | {'str': 5794} |
| `memAvailableKb` | {'int': 5794} |
| `memTotalKb` | {'int': 5794} |
| `otherPssKb` | {'int': 5794} |
| `processes` | {'int': 5794} |
| `pssFallbackProcesses` | {'int': 5794} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
