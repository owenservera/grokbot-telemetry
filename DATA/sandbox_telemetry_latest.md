# sandbox_telemetry_parse — 2026-11-24 22:36:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2479327 lines=5494
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5479 |
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
| `chromeBrowserPssKb` | {'int': 5479} |
| `chromeGpuPssKb` | {'int': 5479} |
| `chromeOtherPssKb` | {'int': 5479} |
| `chromeProcesses` | {'int': 5479} |
| `chromeProfiles` | {'int': 5479} |
| `chromeRendererMaxPssKb` | {'int': 5479} |
| `chromeRendererPssKb` | {'int': 5479} |
| `chromeRenderers` | {'int': 5479} |
| `chromeTabs` | {'int': 5479} |
| `chromeTabsProbedProfiles` | {'int': 5479} |
| `chromeUtilityPssKb` | {'int': 5479} |
| `desktopPssKb` | {'int': 5479} |
| `hostPssKb` | {'int': 5479} |
| `kind` | {'str': 5479} |
| `memAvailableKb` | {'int': 5479} |
| `memTotalKb` | {'int': 5479} |
| `otherPssKb` | {'int': 5479} |
| `processes` | {'int': 5479} |
| `pssFallbackProcesses` | {'int': 5479} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
