# sandbox_telemetry_parse — 2026-11-11 21:50:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1833598 lines=4060
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4051 |
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
| `chromeBrowserPssKb` | {'int': 4051} |
| `chromeGpuPssKb` | {'int': 4051} |
| `chromeOtherPssKb` | {'int': 4051} |
| `chromeProcesses` | {'int': 4051} |
| `chromeProfiles` | {'int': 4051} |
| `chromeRendererMaxPssKb` | {'int': 4051} |
| `chromeRendererPssKb` | {'int': 4051} |
| `chromeRenderers` | {'int': 4051} |
| `chromeTabs` | {'int': 4051} |
| `chromeTabsProbedProfiles` | {'int': 4051} |
| `chromeUtilityPssKb` | {'int': 4051} |
| `desktopPssKb` | {'int': 4051} |
| `hostPssKb` | {'int': 4051} |
| `kind` | {'str': 4051} |
| `memAvailableKb` | {'int': 4051} |
| `memTotalKb` | {'int': 4051} |
| `otherPssKb` | {'int': 4051} |
| `processes` | {'int': 4051} |
| `pssFallbackProcesses` | {'int': 4051} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
