# sandbox_telemetry_parse — 2026-11-28 03:01:37 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=705984 lines=1567
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1559 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 1559} |
| `chromeGpuPssKb` | {'int': 1559} |
| `chromeOtherPssKb` | {'int': 1559} |
| `chromeProcesses` | {'int': 1559} |
| `chromeProfiles` | {'int': 1559} |
| `chromeRendererMaxPssKb` | {'int': 1559} |
| `chromeRendererPssKb` | {'int': 1559} |
| `chromeRenderers` | {'int': 1559} |
| `chromeTabs` | {'int': 1559} |
| `chromeTabsProbedProfiles` | {'int': 1559} |
| `chromeUtilityPssKb` | {'int': 1559} |
| `desktopPssKb` | {'int': 1559} |
| `hostPssKb` | {'int': 1559} |
| `kind` | {'str': 1559} |
| `memAvailableKb` | {'int': 1559} |
| `memTotalKb` | {'int': 1559} |
| `otherPssKb` | {'int': 1559} |
| `processes` | {'int': 1559} |
| `pssFallbackProcesses` | {'int': 1559} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
