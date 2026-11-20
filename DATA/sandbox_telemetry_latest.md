# sandbox_telemetry_parse — 2026-11-20 11:50:18 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1700360 lines=3769
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3758 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3758} |
| `chromeGpuPssKb` | {'int': 3758} |
| `chromeOtherPssKb` | {'int': 3758} |
| `chromeProcesses` | {'int': 3758} |
| `chromeProfiles` | {'int': 3758} |
| `chromeRendererMaxPssKb` | {'int': 3758} |
| `chromeRendererPssKb` | {'int': 3758} |
| `chromeRenderers` | {'int': 3758} |
| `chromeTabs` | {'int': 3758} |
| `chromeTabsProbedProfiles` | {'int': 3758} |
| `chromeUtilityPssKb` | {'int': 3758} |
| `desktopPssKb` | {'int': 3758} |
| `hostPssKb` | {'int': 3758} |
| `kind` | {'str': 3758} |
| `memAvailableKb` | {'int': 3758} |
| `memTotalKb` | {'int': 3758} |
| `otherPssKb` | {'int': 3758} |
| `processes` | {'int': 3758} |
| `pssFallbackProcesses` | {'int': 3758} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
