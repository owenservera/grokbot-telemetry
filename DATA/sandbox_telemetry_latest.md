# sandbox_telemetry_parse — 2026-11-11 20:11:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1797836 lines=3981
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3972 |
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
| `chromeBrowserPssKb` | {'int': 3972} |
| `chromeGpuPssKb` | {'int': 3972} |
| `chromeOtherPssKb` | {'int': 3972} |
| `chromeProcesses` | {'int': 3972} |
| `chromeProfiles` | {'int': 3972} |
| `chromeRendererMaxPssKb` | {'int': 3972} |
| `chromeRendererPssKb` | {'int': 3972} |
| `chromeRenderers` | {'int': 3972} |
| `chromeTabs` | {'int': 3972} |
| `chromeTabsProbedProfiles` | {'int': 3972} |
| `chromeUtilityPssKb` | {'int': 3972} |
| `desktopPssKb` | {'int': 3972} |
| `hostPssKb` | {'int': 3972} |
| `kind` | {'str': 3972} |
| `memAvailableKb` | {'int': 3972} |
| `memTotalKb` | {'int': 3972} |
| `otherPssKb` | {'int': 3972} |
| `processes` | {'int': 3972} |
| `pssFallbackProcesses` | {'int': 3972} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
