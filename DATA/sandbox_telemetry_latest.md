# sandbox_telemetry_parse — 2026-11-25 11:13:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2733021 lines=6055
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6040 |
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
| `chromeBrowserPssKb` | {'int': 6040} |
| `chromeGpuPssKb` | {'int': 6040} |
| `chromeOtherPssKb` | {'int': 6040} |
| `chromeProcesses` | {'int': 6040} |
| `chromeProfiles` | {'int': 6040} |
| `chromeRendererMaxPssKb` | {'int': 6040} |
| `chromeRendererPssKb` | {'int': 6040} |
| `chromeRenderers` | {'int': 6040} |
| `chromeTabs` | {'int': 6040} |
| `chromeTabsProbedProfiles` | {'int': 6040} |
| `chromeUtilityPssKb` | {'int': 6040} |
| `desktopPssKb` | {'int': 6040} |
| `hostPssKb` | {'int': 6040} |
| `kind` | {'str': 6040} |
| `memAvailableKb` | {'int': 6040} |
| `memTotalKb` | {'int': 6040} |
| `otherPssKb` | {'int': 6040} |
| `processes` | {'int': 6040} |
| `pssFallbackProcesses` | {'int': 6040} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
