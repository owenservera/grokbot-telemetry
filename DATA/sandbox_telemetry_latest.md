# sandbox_telemetry_parse — 2026-11-17 13:46:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=409317 lines=911
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 904 |
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
| `chromeBrowserPssKb` | {'int': 904} |
| `chromeGpuPssKb` | {'int': 904} |
| `chromeOtherPssKb` | {'int': 904} |
| `chromeProcesses` | {'int': 904} |
| `chromeProfiles` | {'int': 904} |
| `chromeRendererMaxPssKb` | {'int': 904} |
| `chromeRendererPssKb` | {'int': 904} |
| `chromeRenderers` | {'int': 904} |
| `chromeTabs` | {'int': 904} |
| `chromeTabsProbedProfiles` | {'int': 904} |
| `chromeUtilityPssKb` | {'int': 904} |
| `desktopPssKb` | {'int': 904} |
| `hostPssKb` | {'int': 904} |
| `kind` | {'str': 904} |
| `memAvailableKb` | {'int': 904} |
| `memTotalKb` | {'int': 904} |
| `otherPssKb` | {'int': 904} |
| `processes` | {'int': 904} |
| `pssFallbackProcesses` | {'int': 904} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
