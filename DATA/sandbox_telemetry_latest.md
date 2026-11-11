# sandbox_telemetry_parse — 2026-11-11 22:35:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1852167 lines=4101
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4092 |
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
| `chromeBrowserPssKb` | {'int': 4092} |
| `chromeGpuPssKb` | {'int': 4092} |
| `chromeOtherPssKb` | {'int': 4092} |
| `chromeProcesses` | {'int': 4092} |
| `chromeProfiles` | {'int': 4092} |
| `chromeRendererMaxPssKb` | {'int': 4092} |
| `chromeRendererPssKb` | {'int': 4092} |
| `chromeRenderers` | {'int': 4092} |
| `chromeTabs` | {'int': 4092} |
| `chromeTabsProbedProfiles` | {'int': 4092} |
| `chromeUtilityPssKb` | {'int': 4092} |
| `desktopPssKb` | {'int': 4092} |
| `hostPssKb` | {'int': 4092} |
| `kind` | {'str': 4092} |
| `memAvailableKb` | {'int': 4092} |
| `memTotalKb` | {'int': 4092} |
| `otherPssKb` | {'int': 4092} |
| `processes` | {'int': 4092} |
| `pssFallbackProcesses` | {'int': 4092} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
