# sandbox_telemetry_parse — 2026-11-11 15:34:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1695542 lines=3755
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3746 |
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
| `chromeBrowserPssKb` | {'int': 3746} |
| `chromeGpuPssKb` | {'int': 3746} |
| `chromeOtherPssKb` | {'int': 3746} |
| `chromeProcesses` | {'int': 3746} |
| `chromeProfiles` | {'int': 3746} |
| `chromeRendererMaxPssKb` | {'int': 3746} |
| `chromeRendererPssKb` | {'int': 3746} |
| `chromeRenderers` | {'int': 3746} |
| `chromeTabs` | {'int': 3746} |
| `chromeTabsProbedProfiles` | {'int': 3746} |
| `chromeUtilityPssKb` | {'int': 3746} |
| `desktopPssKb` | {'int': 3746} |
| `hostPssKb` | {'int': 3746} |
| `kind` | {'str': 3746} |
| `memAvailableKb` | {'int': 3746} |
| `memTotalKb` | {'int': 3746} |
| `otherPssKb` | {'int': 3746} |
| `processes` | {'int': 3746} |
| `pssFallbackProcesses` | {'int': 3746} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
