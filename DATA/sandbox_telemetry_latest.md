# sandbox_telemetry_parse — 2026-11-24 03:32:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2110155 lines=4678
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4663 |
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
| `chromeBrowserPssKb` | {'int': 4663} |
| `chromeGpuPssKb` | {'int': 4663} |
| `chromeOtherPssKb` | {'int': 4663} |
| `chromeProcesses` | {'int': 4663} |
| `chromeProfiles` | {'int': 4663} |
| `chromeRendererMaxPssKb` | {'int': 4663} |
| `chromeRendererPssKb` | {'int': 4663} |
| `chromeRenderers` | {'int': 4663} |
| `chromeTabs` | {'int': 4663} |
| `chromeTabsProbedProfiles` | {'int': 4663} |
| `chromeUtilityPssKb` | {'int': 4663} |
| `desktopPssKb` | {'int': 4663} |
| `hostPssKb` | {'int': 4663} |
| `kind` | {'str': 4663} |
| `memAvailableKb` | {'int': 4663} |
| `memTotalKb` | {'int': 4663} |
| `otherPssKb` | {'int': 4663} |
| `processes` | {'int': 4663} |
| `pssFallbackProcesses` | {'int': 4663} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
