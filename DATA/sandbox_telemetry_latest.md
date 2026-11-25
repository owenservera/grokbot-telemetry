# sandbox_telemetry_parse — 2026-11-25 11:47:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2743870 lines=6079
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6064 |
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
| `chromeBrowserPssKb` | {'int': 6064} |
| `chromeGpuPssKb` | {'int': 6064} |
| `chromeOtherPssKb` | {'int': 6064} |
| `chromeProcesses` | {'int': 6064} |
| `chromeProfiles` | {'int': 6064} |
| `chromeRendererMaxPssKb` | {'int': 6064} |
| `chromeRendererPssKb` | {'int': 6064} |
| `chromeRenderers` | {'int': 6064} |
| `chromeTabs` | {'int': 6064} |
| `chromeTabsProbedProfiles` | {'int': 6064} |
| `chromeUtilityPssKb` | {'int': 6064} |
| `desktopPssKb` | {'int': 6064} |
| `hostPssKb` | {'int': 6064} |
| `kind` | {'str': 6064} |
| `memAvailableKb` | {'int': 6064} |
| `memTotalKb` | {'int': 6064} |
| `otherPssKb` | {'int': 6064} |
| `processes` | {'int': 6064} |
| `pssFallbackProcesses` | {'int': 6064} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
