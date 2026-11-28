# sandbox_telemetry_parse — 2026-11-28 01:38:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=679266 lines=1508
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1500 |
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
| `chromeBrowserPssKb` | {'int': 1500} |
| `chromeGpuPssKb` | {'int': 1500} |
| `chromeOtherPssKb` | {'int': 1500} |
| `chromeProcesses` | {'int': 1500} |
| `chromeProfiles` | {'int': 1500} |
| `chromeRendererMaxPssKb` | {'int': 1500} |
| `chromeRendererPssKb` | {'int': 1500} |
| `chromeRenderers` | {'int': 1500} |
| `chromeTabs` | {'int': 1500} |
| `chromeTabsProbedProfiles` | {'int': 1500} |
| `chromeUtilityPssKb` | {'int': 1500} |
| `desktopPssKb` | {'int': 1500} |
| `hostPssKb` | {'int': 1500} |
| `kind` | {'str': 1500} |
| `memAvailableKb` | {'int': 1500} |
| `memTotalKb` | {'int': 1500} |
| `otherPssKb` | {'int': 1500} |
| `processes` | {'int': 1500} |
| `pssFallbackProcesses` | {'int': 1500} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
