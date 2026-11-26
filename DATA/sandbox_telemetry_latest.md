# sandbox_telemetry_parse — 2026-11-26 07:59:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3152724 lines=6983
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6968 |
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
| `chromeBrowserPssKb` | {'int': 6968} |
| `chromeGpuPssKb` | {'int': 6968} |
| `chromeOtherPssKb` | {'int': 6968} |
| `chromeProcesses` | {'int': 6968} |
| `chromeProfiles` | {'int': 6968} |
| `chromeRendererMaxPssKb` | {'int': 6968} |
| `chromeRendererPssKb` | {'int': 6968} |
| `chromeRenderers` | {'int': 6968} |
| `chromeTabs` | {'int': 6968} |
| `chromeTabsProbedProfiles` | {'int': 6968} |
| `chromeUtilityPssKb` | {'int': 6968} |
| `desktopPssKb` | {'int': 6968} |
| `hostPssKb` | {'int': 6968} |
| `kind` | {'str': 6968} |
| `memAvailableKb` | {'int': 6968} |
| `memTotalKb` | {'int': 6968} |
| `otherPssKb` | {'int': 6968} |
| `processes` | {'int': 6968} |
| `pssFallbackProcesses` | {'int': 6968} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
