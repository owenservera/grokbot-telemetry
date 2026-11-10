# sandbox_telemetry_parse — 2026-11-10 02:27:54 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=952577 lines=2113
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2104 |
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
| `chromeBrowserPssKb` | {'int': 2104} |
| `chromeGpuPssKb` | {'int': 2104} |
| `chromeOtherPssKb` | {'int': 2104} |
| `chromeProcesses` | {'int': 2104} |
| `chromeProfiles` | {'int': 2104} |
| `chromeRendererMaxPssKb` | {'int': 2104} |
| `chromeRendererPssKb` | {'int': 2104} |
| `chromeRenderers` | {'int': 2104} |
| `chromeTabs` | {'int': 2104} |
| `chromeTabsProbedProfiles` | {'int': 2104} |
| `chromeUtilityPssKb` | {'int': 2104} |
| `desktopPssKb` | {'int': 2104} |
| `hostPssKb` | {'int': 2104} |
| `kind` | {'str': 2104} |
| `memAvailableKb` | {'int': 2104} |
| `memTotalKb` | {'int': 2104} |
| `otherPssKb` | {'int': 2104} |
| `processes` | {'int': 2104} |
| `pssFallbackProcesses` | {'int': 2104} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
