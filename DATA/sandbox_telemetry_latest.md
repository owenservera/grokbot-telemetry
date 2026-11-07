# sandbox_telemetry_parse — 2026-11-07 05:36:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=329101 lines=735
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 726 |
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
| `chromeBrowserPssKb` | {'int': 726} |
| `chromeGpuPssKb` | {'int': 726} |
| `chromeOtherPssKb` | {'int': 726} |
| `chromeProcesses` | {'int': 726} |
| `chromeProfiles` | {'int': 726} |
| `chromeRendererMaxPssKb` | {'int': 726} |
| `chromeRendererPssKb` | {'int': 726} |
| `chromeRenderers` | {'int': 726} |
| `chromeTabs` | {'int': 726} |
| `chromeTabsProbedProfiles` | {'int': 726} |
| `chromeUtilityPssKb` | {'int': 726} |
| `desktopPssKb` | {'int': 726} |
| `hostPssKb` | {'int': 726} |
| `kind` | {'str': 726} |
| `memAvailableKb` | {'int': 726} |
| `memTotalKb` | {'int': 726} |
| `otherPssKb` | {'int': 726} |
| `processes` | {'int': 726} |
| `pssFallbackProcesses` | {'int': 726} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
