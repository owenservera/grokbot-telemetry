# sandbox_telemetry_parse — 2026-11-26 11:47:18 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3235090 lines=7165
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7150 |
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
| `chromeBrowserPssKb` | {'int': 7150} |
| `chromeGpuPssKb` | {'int': 7150} |
| `chromeOtherPssKb` | {'int': 7150} |
| `chromeProcesses` | {'int': 7150} |
| `chromeProfiles` | {'int': 7150} |
| `chromeRendererMaxPssKb` | {'int': 7150} |
| `chromeRendererPssKb` | {'int': 7150} |
| `chromeRenderers` | {'int': 7150} |
| `chromeTabs` | {'int': 7150} |
| `chromeTabsProbedProfiles` | {'int': 7150} |
| `chromeUtilityPssKb` | {'int': 7150} |
| `desktopPssKb` | {'int': 7150} |
| `hostPssKb` | {'int': 7150} |
| `kind` | {'str': 7150} |
| `memAvailableKb` | {'int': 7150} |
| `memTotalKb` | {'int': 7150} |
| `otherPssKb` | {'int': 7150} |
| `processes` | {'int': 7150} |
| `pssFallbackProcesses` | {'int': 7150} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
