# sandbox_telemetry_parse — 2026-11-18 13:21:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=833899 lines=1850
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1843 |
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
| `chromeBrowserPssKb` | {'int': 1843} |
| `chromeGpuPssKb` | {'int': 1843} |
| `chromeOtherPssKb` | {'int': 1843} |
| `chromeProcesses` | {'int': 1843} |
| `chromeProfiles` | {'int': 1843} |
| `chromeRendererMaxPssKb` | {'int': 1843} |
| `chromeRendererPssKb` | {'int': 1843} |
| `chromeRenderers` | {'int': 1843} |
| `chromeTabs` | {'int': 1843} |
| `chromeTabsProbedProfiles` | {'int': 1843} |
| `chromeUtilityPssKb` | {'int': 1843} |
| `desktopPssKb` | {'int': 1843} |
| `hostPssKb` | {'int': 1843} |
| `kind` | {'str': 1843} |
| `memAvailableKb` | {'int': 1843} |
| `memTotalKb` | {'int': 1843} |
| `otherPssKb` | {'int': 1843} |
| `processes` | {'int': 1843} |
| `pssFallbackProcesses` | {'int': 1843} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
