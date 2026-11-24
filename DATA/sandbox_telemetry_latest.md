# sandbox_telemetry_parse — 2026-11-24 01:48:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2079412 lines=4610
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4595 |
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
| `chromeBrowserPssKb` | {'int': 4595} |
| `chromeGpuPssKb` | {'int': 4595} |
| `chromeOtherPssKb` | {'int': 4595} |
| `chromeProcesses` | {'int': 4595} |
| `chromeProfiles` | {'int': 4595} |
| `chromeRendererMaxPssKb` | {'int': 4595} |
| `chromeRendererPssKb` | {'int': 4595} |
| `chromeRenderers` | {'int': 4595} |
| `chromeTabs` | {'int': 4595} |
| `chromeTabsProbedProfiles` | {'int': 4595} |
| `chromeUtilityPssKb` | {'int': 4595} |
| `desktopPssKb` | {'int': 4595} |
| `hostPssKb` | {'int': 4595} |
| `kind` | {'str': 4595} |
| `memAvailableKb` | {'int': 4595} |
| `memTotalKb` | {'int': 4595} |
| `otherPssKb` | {'int': 4595} |
| `processes` | {'int': 4595} |
| `pssFallbackProcesses` | {'int': 4595} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
