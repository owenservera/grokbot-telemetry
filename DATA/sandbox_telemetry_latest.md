# sandbox_telemetry_parse — 2026-11-11 21:15:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1820012 lines=4030
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4021 |
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
| `chromeBrowserPssKb` | {'int': 4021} |
| `chromeGpuPssKb` | {'int': 4021} |
| `chromeOtherPssKb` | {'int': 4021} |
| `chromeProcesses` | {'int': 4021} |
| `chromeProfiles` | {'int': 4021} |
| `chromeRendererMaxPssKb` | {'int': 4021} |
| `chromeRendererPssKb` | {'int': 4021} |
| `chromeRenderers` | {'int': 4021} |
| `chromeTabs` | {'int': 4021} |
| `chromeTabsProbedProfiles` | {'int': 4021} |
| `chromeUtilityPssKb` | {'int': 4021} |
| `desktopPssKb` | {'int': 4021} |
| `hostPssKb` | {'int': 4021} |
| `kind` | {'str': 4021} |
| `memAvailableKb` | {'int': 4021} |
| `memTotalKb` | {'int': 4021} |
| `otherPssKb` | {'int': 4021} |
| `processes` | {'int': 4021} |
| `pssFallbackProcesses` | {'int': 4021} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
