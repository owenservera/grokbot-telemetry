# sandbox_telemetry_parse — 2026-11-25 07:01:34 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2640740 lines=5851
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5836 |
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
| `chromeBrowserPssKb` | {'int': 5836} |
| `chromeGpuPssKb` | {'int': 5836} |
| `chromeOtherPssKb` | {'int': 5836} |
| `chromeProcesses` | {'int': 5836} |
| `chromeProfiles` | {'int': 5836} |
| `chromeRendererMaxPssKb` | {'int': 5836} |
| `chromeRendererPssKb` | {'int': 5836} |
| `chromeRenderers` | {'int': 5836} |
| `chromeTabs` | {'int': 5836} |
| `chromeTabsProbedProfiles` | {'int': 5836} |
| `chromeUtilityPssKb` | {'int': 5836} |
| `desktopPssKb` | {'int': 5836} |
| `hostPssKb` | {'int': 5836} |
| `kind` | {'str': 5836} |
| `memAvailableKb` | {'int': 5836} |
| `memTotalKb` | {'int': 5836} |
| `otherPssKb` | {'int': 5836} |
| `processes` | {'int': 5836} |
| `pssFallbackProcesses` | {'int': 5836} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
