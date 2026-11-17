# sandbox_telemetry_parse — 2026-11-17 17:06:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=465383 lines=1035
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1028 |
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
| `chromeBrowserPssKb` | {'int': 1028} |
| `chromeGpuPssKb` | {'int': 1028} |
| `chromeOtherPssKb` | {'int': 1028} |
| `chromeProcesses` | {'int': 1028} |
| `chromeProfiles` | {'int': 1028} |
| `chromeRendererMaxPssKb` | {'int': 1028} |
| `chromeRendererPssKb` | {'int': 1028} |
| `chromeRenderers` | {'int': 1028} |
| `chromeTabs` | {'int': 1028} |
| `chromeTabsProbedProfiles` | {'int': 1028} |
| `chromeUtilityPssKb` | {'int': 1028} |
| `desktopPssKb` | {'int': 1028} |
| `hostPssKb` | {'int': 1028} |
| `kind` | {'str': 1028} |
| `memAvailableKb` | {'int': 1028} |
| `memTotalKb` | {'int': 1028} |
| `otherPssKb` | {'int': 1028} |
| `processes` | {'int': 1028} |
| `pssFallbackProcesses` | {'int': 1028} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
