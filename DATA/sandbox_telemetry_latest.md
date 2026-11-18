# sandbox_telemetry_parse — 2026-11-18 13:43:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=841139 lines=1866
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1859 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `chromeBrowserPssKb` | {'int': 1859} |
| `chromeGpuPssKb` | {'int': 1859} |
| `chromeOtherPssKb` | {'int': 1859} |
| `chromeProcesses` | {'int': 1859} |
| `chromeProfiles` | {'int': 1859} |
| `chromeRendererMaxPssKb` | {'int': 1859} |
| `chromeRendererPssKb` | {'int': 1859} |
| `chromeRenderers` | {'int': 1859} |
| `chromeTabs` | {'int': 1859} |
| `chromeTabsProbedProfiles` | {'int': 1859} |
| `chromeUtilityPssKb` | {'int': 1859} |
| `desktopPssKb` | {'int': 1859} |
| `hostPssKb` | {'int': 1859} |
| `kind` | {'str': 1859} |
| `memAvailableKb` | {'int': 1859} |
| `memTotalKb` | {'int': 1859} |
| `otherPssKb` | {'int': 1859} |
| `processes` | {'int': 1859} |
| `pssFallbackProcesses` | {'int': 1859} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
