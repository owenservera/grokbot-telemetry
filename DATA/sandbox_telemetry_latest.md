# sandbox_telemetry_parse — 2026-11-28 08:45:21 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=812267 lines=1802
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1794 |
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
| `chromeBrowserPssKb` | {'int': 1794} |
| `chromeGpuPssKb` | {'int': 1794} |
| `chromeOtherPssKb` | {'int': 1794} |
| `chromeProcesses` | {'int': 1794} |
| `chromeProfiles` | {'int': 1794} |
| `chromeRendererMaxPssKb` | {'int': 1794} |
| `chromeRendererPssKb` | {'int': 1794} |
| `chromeRenderers` | {'int': 1794} |
| `chromeTabs` | {'int': 1794} |
| `chromeTabsProbedProfiles` | {'int': 1794} |
| `chromeUtilityPssKb` | {'int': 1794} |
| `desktopPssKb` | {'int': 1794} |
| `hostPssKb` | {'int': 1794} |
| `kind` | {'str': 1794} |
| `memAvailableKb` | {'int': 1794} |
| `memTotalKb` | {'int': 1794} |
| `otherPssKb` | {'int': 1794} |
| `processes` | {'int': 1794} |
| `pssFallbackProcesses` | {'int': 1794} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
