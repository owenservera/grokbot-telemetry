# sandbox_telemetry_parse — 2026-11-11 18:28:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1760272 lines=3898
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3889 |
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
| `chromeBrowserPssKb` | {'int': 3889} |
| `chromeGpuPssKb` | {'int': 3889} |
| `chromeOtherPssKb` | {'int': 3889} |
| `chromeProcesses` | {'int': 3889} |
| `chromeProfiles` | {'int': 3889} |
| `chromeRendererMaxPssKb` | {'int': 3889} |
| `chromeRendererPssKb` | {'int': 3889} |
| `chromeRenderers` | {'int': 3889} |
| `chromeTabs` | {'int': 3889} |
| `chromeTabsProbedProfiles` | {'int': 3889} |
| `chromeUtilityPssKb` | {'int': 3889} |
| `desktopPssKb` | {'int': 3889} |
| `hostPssKb` | {'int': 3889} |
| `kind` | {'str': 3889} |
| `memAvailableKb` | {'int': 3889} |
| `memTotalKb` | {'int': 3889} |
| `otherPssKb` | {'int': 3889} |
| `processes` | {'int': 3889} |
| `pssFallbackProcesses` | {'int': 3889} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
