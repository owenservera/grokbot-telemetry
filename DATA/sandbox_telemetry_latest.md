# sandbox_telemetry_parse — 2026-11-26 14:56:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3300220 lines=7309
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7294 |
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
| `chromeBrowserPssKb` | {'int': 7294} |
| `chromeGpuPssKb` | {'int': 7294} |
| `chromeOtherPssKb` | {'int': 7294} |
| `chromeProcesses` | {'int': 7294} |
| `chromeProfiles` | {'int': 7294} |
| `chromeRendererMaxPssKb` | {'int': 7294} |
| `chromeRendererPssKb` | {'int': 7294} |
| `chromeRenderers` | {'int': 7294} |
| `chromeTabs` | {'int': 7294} |
| `chromeTabsProbedProfiles` | {'int': 7294} |
| `chromeUtilityPssKb` | {'int': 7294} |
| `desktopPssKb` | {'int': 7294} |
| `hostPssKb` | {'int': 7294} |
| `kind` | {'str': 7294} |
| `memAvailableKb` | {'int': 7294} |
| `memTotalKb` | {'int': 7294} |
| `otherPssKb` | {'int': 7294} |
| `processes` | {'int': 7294} |
| `pssFallbackProcesses` | {'int': 7294} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
