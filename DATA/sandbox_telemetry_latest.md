# sandbox_telemetry_parse — 2026-11-11 08:49:54 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1550744 lines=3435
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3426 |
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
| `chromeBrowserPssKb` | {'int': 3426} |
| `chromeGpuPssKb` | {'int': 3426} |
| `chromeOtherPssKb` | {'int': 3426} |
| `chromeProcesses` | {'int': 3426} |
| `chromeProfiles` | {'int': 3426} |
| `chromeRendererMaxPssKb` | {'int': 3426} |
| `chromeRendererPssKb` | {'int': 3426} |
| `chromeRenderers` | {'int': 3426} |
| `chromeTabs` | {'int': 3426} |
| `chromeTabsProbedProfiles` | {'int': 3426} |
| `chromeUtilityPssKb` | {'int': 3426} |
| `desktopPssKb` | {'int': 3426} |
| `hostPssKb` | {'int': 3426} |
| `kind` | {'str': 3426} |
| `memAvailableKb` | {'int': 3426} |
| `memTotalKb` | {'int': 3426} |
| `otherPssKb` | {'int': 3426} |
| `processes` | {'int': 3426} |
| `pssFallbackProcesses` | {'int': 3426} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
