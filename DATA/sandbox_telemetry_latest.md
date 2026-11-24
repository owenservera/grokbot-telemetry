# sandbox_telemetry_parse — 2026-11-24 08:40:11 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2210547 lines=4900
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4885 |
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
| `chromeBrowserPssKb` | {'int': 4885} |
| `chromeGpuPssKb` | {'int': 4885} |
| `chromeOtherPssKb` | {'int': 4885} |
| `chromeProcesses` | {'int': 4885} |
| `chromeProfiles` | {'int': 4885} |
| `chromeRendererMaxPssKb` | {'int': 4885} |
| `chromeRendererPssKb` | {'int': 4885} |
| `chromeRenderers` | {'int': 4885} |
| `chromeTabs` | {'int': 4885} |
| `chromeTabsProbedProfiles` | {'int': 4885} |
| `chromeUtilityPssKb` | {'int': 4885} |
| `desktopPssKb` | {'int': 4885} |
| `hostPssKb` | {'int': 4885} |
| `kind` | {'str': 4885} |
| `memAvailableKb` | {'int': 4885} |
| `memTotalKb` | {'int': 4885} |
| `otherPssKb` | {'int': 4885} |
| `processes` | {'int': 4885} |
| `pssFallbackProcesses` | {'int': 4885} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
