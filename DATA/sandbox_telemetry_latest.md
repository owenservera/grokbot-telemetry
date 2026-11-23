# sandbox_telemetry_parse — 2026-11-23 16:42:13 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1911986 lines=4240
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4225 |
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
| `chromeBrowserPssKb` | {'int': 4225} |
| `chromeGpuPssKb` | {'int': 4225} |
| `chromeOtherPssKb` | {'int': 4225} |
| `chromeProcesses` | {'int': 4225} |
| `chromeProfiles` | {'int': 4225} |
| `chromeRendererMaxPssKb` | {'int': 4225} |
| `chromeRendererPssKb` | {'int': 4225} |
| `chromeRenderers` | {'int': 4225} |
| `chromeTabs` | {'int': 4225} |
| `chromeTabsProbedProfiles` | {'int': 4225} |
| `chromeUtilityPssKb` | {'int': 4225} |
| `desktopPssKb` | {'int': 4225} |
| `hostPssKb` | {'int': 4225} |
| `kind` | {'str': 4225} |
| `memAvailableKb` | {'int': 4225} |
| `memTotalKb` | {'int': 4225} |
| `otherPssKb` | {'int': 4225} |
| `processes` | {'int': 4225} |
| `pssFallbackProcesses` | {'int': 4225} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
