# sandbox_telemetry_parse — 2026-11-23 22:49:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2022880 lines=4485
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4470 |
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
| `chromeBrowserPssKb` | {'int': 4470} |
| `chromeGpuPssKb` | {'int': 4470} |
| `chromeOtherPssKb` | {'int': 4470} |
| `chromeProcesses` | {'int': 4470} |
| `chromeProfiles` | {'int': 4470} |
| `chromeRendererMaxPssKb` | {'int': 4470} |
| `chromeRendererPssKb` | {'int': 4470} |
| `chromeRenderers` | {'int': 4470} |
| `chromeTabs` | {'int': 4470} |
| `chromeTabsProbedProfiles` | {'int': 4470} |
| `chromeUtilityPssKb` | {'int': 4470} |
| `desktopPssKb` | {'int': 4470} |
| `hostPssKb` | {'int': 4470} |
| `kind` | {'str': 4470} |
| `memAvailableKb` | {'int': 4470} |
| `memTotalKb` | {'int': 4470} |
| `otherPssKb` | {'int': 4470} |
| `processes` | {'int': 4470} |
| `pssFallbackProcesses` | {'int': 4470} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
