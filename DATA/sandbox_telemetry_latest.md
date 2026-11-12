# sandbox_telemetry_parse — 2026-11-12 13:44:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2154895 lines=4770
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4761 |
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
| `chromeBrowserPssKb` | {'int': 4761} |
| `chromeGpuPssKb` | {'int': 4761} |
| `chromeOtherPssKb` | {'int': 4761} |
| `chromeProcesses` | {'int': 4761} |
| `chromeProfiles` | {'int': 4761} |
| `chromeRendererMaxPssKb` | {'int': 4761} |
| `chromeRendererPssKb` | {'int': 4761} |
| `chromeRenderers` | {'int': 4761} |
| `chromeTabs` | {'int': 4761} |
| `chromeTabsProbedProfiles` | {'int': 4761} |
| `chromeUtilityPssKb` | {'int': 4761} |
| `desktopPssKb` | {'int': 4761} |
| `hostPssKb` | {'int': 4761} |
| `kind` | {'str': 4761} |
| `memAvailableKb` | {'int': 4761} |
| `memTotalKb` | {'int': 4761} |
| `otherPssKb` | {'int': 4761} |
| `processes` | {'int': 4761} |
| `pssFallbackProcesses` | {'int': 4761} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
