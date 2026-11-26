# sandbox_telemetry_parse — 2026-11-26 13:14:54 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3265847 lines=7233
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7218 |
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
| `chromeBrowserPssKb` | {'int': 7218} |
| `chromeGpuPssKb` | {'int': 7218} |
| `chromeOtherPssKb` | {'int': 7218} |
| `chromeProcesses` | {'int': 7218} |
| `chromeProfiles` | {'int': 7218} |
| `chromeRendererMaxPssKb` | {'int': 7218} |
| `chromeRendererPssKb` | {'int': 7218} |
| `chromeRenderers` | {'int': 7218} |
| `chromeTabs` | {'int': 7218} |
| `chromeTabsProbedProfiles` | {'int': 7218} |
| `chromeUtilityPssKb` | {'int': 7218} |
| `desktopPssKb` | {'int': 7218} |
| `hostPssKb` | {'int': 7218} |
| `kind` | {'str': 7218} |
| `memAvailableKb` | {'int': 7218} |
| `memTotalKb` | {'int': 7218} |
| `otherPssKb` | {'int': 7218} |
| `processes` | {'int': 7218} |
| `pssFallbackProcesses` | {'int': 7218} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
