# sandbox_telemetry_parse — 2026-11-10 23:33:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1377081 lines=3051
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3042 |
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
| `chromeBrowserPssKb` | {'int': 3042} |
| `chromeGpuPssKb` | {'int': 3042} |
| `chromeOtherPssKb` | {'int': 3042} |
| `chromeProcesses` | {'int': 3042} |
| `chromeProfiles` | {'int': 3042} |
| `chromeRendererMaxPssKb` | {'int': 3042} |
| `chromeRendererPssKb` | {'int': 3042} |
| `chromeRenderers` | {'int': 3042} |
| `chromeTabs` | {'int': 3042} |
| `chromeTabsProbedProfiles` | {'int': 3042} |
| `chromeUtilityPssKb` | {'int': 3042} |
| `desktopPssKb` | {'int': 3042} |
| `hostPssKb` | {'int': 3042} |
| `kind` | {'str': 3042} |
| `memAvailableKb` | {'int': 3042} |
| `memTotalKb` | {'int': 3042} |
| `otherPssKb` | {'int': 3042} |
| `processes` | {'int': 3042} |
| `pssFallbackProcesses` | {'int': 3042} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
