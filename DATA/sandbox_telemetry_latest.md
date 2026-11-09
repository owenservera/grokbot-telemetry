# sandbox_telemetry_parse — 2026-11-09 22:14:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=862085 lines=1913
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1904 |
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
| `chromeBrowserPssKb` | {'int': 1904} |
| `chromeGpuPssKb` | {'int': 1904} |
| `chromeOtherPssKb` | {'int': 1904} |
| `chromeProcesses` | {'int': 1904} |
| `chromeProfiles` | {'int': 1904} |
| `chromeRendererMaxPssKb` | {'int': 1904} |
| `chromeRendererPssKb` | {'int': 1904} |
| `chromeRenderers` | {'int': 1904} |
| `chromeTabs` | {'int': 1904} |
| `chromeTabsProbedProfiles` | {'int': 1904} |
| `chromeUtilityPssKb` | {'int': 1904} |
| `desktopPssKb` | {'int': 1904} |
| `hostPssKb` | {'int': 1904} |
| `kind` | {'str': 1904} |
| `memAvailableKb` | {'int': 1904} |
| `memTotalKb` | {'int': 1904} |
| `otherPssKb` | {'int': 1904} |
| `processes` | {'int': 1904} |
| `pssFallbackProcesses` | {'int': 1904} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
