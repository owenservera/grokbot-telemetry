# sandbox_telemetry_parse — 2026-11-28 01:45:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=682437 lines=1515
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1507 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 1507} |
| `chromeGpuPssKb` | {'int': 1507} |
| `chromeOtherPssKb` | {'int': 1507} |
| `chromeProcesses` | {'int': 1507} |
| `chromeProfiles` | {'int': 1507} |
| `chromeRendererMaxPssKb` | {'int': 1507} |
| `chromeRendererPssKb` | {'int': 1507} |
| `chromeRenderers` | {'int': 1507} |
| `chromeTabs` | {'int': 1507} |
| `chromeTabsProbedProfiles` | {'int': 1507} |
| `chromeUtilityPssKb` | {'int': 1507} |
| `desktopPssKb` | {'int': 1507} |
| `hostPssKb` | {'int': 1507} |
| `kind` | {'str': 1507} |
| `memAvailableKb` | {'int': 1507} |
| `memTotalKb` | {'int': 1507} |
| `otherPssKb` | {'int': 1507} |
| `processes` | {'int': 1507} |
| `pssFallbackProcesses` | {'int': 1507} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
