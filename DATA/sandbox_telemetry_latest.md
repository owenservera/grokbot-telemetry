# sandbox_telemetry_parse — 2026-11-23 15:16:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1888433 lines=4188
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4173 |
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
| `chromeBrowserPssKb` | {'int': 4173} |
| `chromeGpuPssKb` | {'int': 4173} |
| `chromeOtherPssKb` | {'int': 4173} |
| `chromeProcesses` | {'int': 4173} |
| `chromeProfiles` | {'int': 4173} |
| `chromeRendererMaxPssKb` | {'int': 4173} |
| `chromeRendererPssKb` | {'int': 4173} |
| `chromeRenderers` | {'int': 4173} |
| `chromeTabs` | {'int': 4173} |
| `chromeTabsProbedProfiles` | {'int': 4173} |
| `chromeUtilityPssKb` | {'int': 4173} |
| `desktopPssKb` | {'int': 4173} |
| `hostPssKb` | {'int': 4173} |
| `kind` | {'str': 4173} |
| `memAvailableKb` | {'int': 4173} |
| `memTotalKb` | {'int': 4173} |
| `otherPssKb` | {'int': 4173} |
| `processes` | {'int': 4173} |
| `pssFallbackProcesses` | {'int': 4173} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
