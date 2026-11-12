# sandbox_telemetry_parse — 2026-11-12 17:44:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2250478 lines=4981
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4972 |
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
| `chromeBrowserPssKb` | {'int': 4972} |
| `chromeGpuPssKb` | {'int': 4972} |
| `chromeOtherPssKb` | {'int': 4972} |
| `chromeProcesses` | {'int': 4972} |
| `chromeProfiles` | {'int': 4972} |
| `chromeRendererMaxPssKb` | {'int': 4972} |
| `chromeRendererPssKb` | {'int': 4972} |
| `chromeRenderers` | {'int': 4972} |
| `chromeTabs` | {'int': 4972} |
| `chromeTabsProbedProfiles` | {'int': 4972} |
| `chromeUtilityPssKb` | {'int': 4972} |
| `desktopPssKb` | {'int': 4972} |
| `hostPssKb` | {'int': 4972} |
| `kind` | {'str': 4972} |
| `memAvailableKb` | {'int': 4972} |
| `memTotalKb` | {'int': 4972} |
| `otherPssKb` | {'int': 4972} |
| `processes` | {'int': 4972} |
| `pssFallbackProcesses` | {'int': 4972} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
