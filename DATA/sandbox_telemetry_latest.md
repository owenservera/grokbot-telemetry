# sandbox_telemetry_parse — 2026-11-24 08:18:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2201498 lines=4880
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4865 |
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
| `chromeBrowserPssKb` | {'int': 4865} |
| `chromeGpuPssKb` | {'int': 4865} |
| `chromeOtherPssKb` | {'int': 4865} |
| `chromeProcesses` | {'int': 4865} |
| `chromeProfiles` | {'int': 4865} |
| `chromeRendererMaxPssKb` | {'int': 4865} |
| `chromeRendererPssKb` | {'int': 4865} |
| `chromeRenderers` | {'int': 4865} |
| `chromeTabs` | {'int': 4865} |
| `chromeTabsProbedProfiles` | {'int': 4865} |
| `chromeUtilityPssKb` | {'int': 4865} |
| `desktopPssKb` | {'int': 4865} |
| `hostPssKb` | {'int': 4865} |
| `kind` | {'str': 4865} |
| `memAvailableKb` | {'int': 4865} |
| `memTotalKb` | {'int': 4865} |
| `otherPssKb` | {'int': 4865} |
| `processes` | {'int': 4865} |
| `pssFallbackProcesses` | {'int': 4865} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
