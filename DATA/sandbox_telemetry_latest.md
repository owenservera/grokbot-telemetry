# sandbox_telemetry_parse — 2026-11-25 17:12:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2846976 lines=6307
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6292 |
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
| `chromeBrowserPssKb` | {'int': 6292} |
| `chromeGpuPssKb` | {'int': 6292} |
| `chromeOtherPssKb` | {'int': 6292} |
| `chromeProcesses` | {'int': 6292} |
| `chromeProfiles` | {'int': 6292} |
| `chromeRendererMaxPssKb` | {'int': 6292} |
| `chromeRendererPssKb` | {'int': 6292} |
| `chromeRenderers` | {'int': 6292} |
| `chromeTabs` | {'int': 6292} |
| `chromeTabsProbedProfiles` | {'int': 6292} |
| `chromeUtilityPssKb` | {'int': 6292} |
| `desktopPssKb` | {'int': 6292} |
| `hostPssKb` | {'int': 6292} |
| `kind` | {'str': 6292} |
| `memAvailableKb` | {'int': 6292} |
| `memTotalKb` | {'int': 6292} |
| `otherPssKb` | {'int': 6292} |
| `processes` | {'int': 6292} |
| `pssFallbackProcesses` | {'int': 6292} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
