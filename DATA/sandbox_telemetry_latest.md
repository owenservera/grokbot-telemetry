# sandbox_telemetry_parse — 2026-11-19 11:38:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1255139 lines=2783
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2774 |
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
| `chromeBrowserPssKb` | {'int': 2774} |
| `chromeGpuPssKb` | {'int': 2774} |
| `chromeOtherPssKb` | {'int': 2774} |
| `chromeProcesses` | {'int': 2774} |
| `chromeProfiles` | {'int': 2774} |
| `chromeRendererMaxPssKb` | {'int': 2774} |
| `chromeRendererPssKb` | {'int': 2774} |
| `chromeRenderers` | {'int': 2774} |
| `chromeTabs` | {'int': 2774} |
| `chromeTabsProbedProfiles` | {'int': 2774} |
| `chromeUtilityPssKb` | {'int': 2774} |
| `desktopPssKb` | {'int': 2774} |
| `hostPssKb` | {'int': 2774} |
| `kind` | {'str': 2774} |
| `memAvailableKb` | {'int': 2774} |
| `memTotalKb` | {'int': 2774} |
| `otherPssKb` | {'int': 2774} |
| `processes` | {'int': 2774} |
| `pssFallbackProcesses` | {'int': 2774} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
