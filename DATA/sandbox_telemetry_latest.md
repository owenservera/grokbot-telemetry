# sandbox_telemetry_parse — 2026-11-20 15:03:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1766403 lines=3915
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3904 |
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
| `chromeBrowserPssKb` | {'int': 3904} |
| `chromeGpuPssKb` | {'int': 3904} |
| `chromeOtherPssKb` | {'int': 3904} |
| `chromeProcesses` | {'int': 3904} |
| `chromeProfiles` | {'int': 3904} |
| `chromeRendererMaxPssKb` | {'int': 3904} |
| `chromeRendererPssKb` | {'int': 3904} |
| `chromeRenderers` | {'int': 3904} |
| `chromeTabs` | {'int': 3904} |
| `chromeTabsProbedProfiles` | {'int': 3904} |
| `chromeUtilityPssKb` | {'int': 3904} |
| `desktopPssKb` | {'int': 3904} |
| `hostPssKb` | {'int': 3904} |
| `kind` | {'str': 3904} |
| `memAvailableKb` | {'int': 3904} |
| `memTotalKb` | {'int': 3904} |
| `otherPssKb` | {'int': 3904} |
| `processes` | {'int': 3904} |
| `pssFallbackProcesses` | {'int': 3904} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
