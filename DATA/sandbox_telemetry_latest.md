# sandbox_telemetry_parse — 2026-11-26 09:06:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3176698 lines=7036
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7021 |
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
| `chromeBrowserPssKb` | {'int': 7021} |
| `chromeGpuPssKb` | {'int': 7021} |
| `chromeOtherPssKb` | {'int': 7021} |
| `chromeProcesses` | {'int': 7021} |
| `chromeProfiles` | {'int': 7021} |
| `chromeRendererMaxPssKb` | {'int': 7021} |
| `chromeRendererPssKb` | {'int': 7021} |
| `chromeRenderers` | {'int': 7021} |
| `chromeTabs` | {'int': 7021} |
| `chromeTabsProbedProfiles` | {'int': 7021} |
| `chromeUtilityPssKb` | {'int': 7021} |
| `desktopPssKb` | {'int': 7021} |
| `hostPssKb` | {'int': 7021} |
| `kind` | {'str': 7021} |
| `memAvailableKb` | {'int': 7021} |
| `memTotalKb` | {'int': 7021} |
| `otherPssKb` | {'int': 7021} |
| `processes` | {'int': 7021} |
| `pssFallbackProcesses` | {'int': 7021} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
