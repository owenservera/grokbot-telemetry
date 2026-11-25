# sandbox_telemetry_parse — 2026-11-25 20:01:37 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2902133 lines=6429
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6414 |
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
| `chromeBrowserPssKb` | {'int': 6414} |
| `chromeGpuPssKb` | {'int': 6414} |
| `chromeOtherPssKb` | {'int': 6414} |
| `chromeProcesses` | {'int': 6414} |
| `chromeProfiles` | {'int': 6414} |
| `chromeRendererMaxPssKb` | {'int': 6414} |
| `chromeRendererPssKb` | {'int': 6414} |
| `chromeRenderers` | {'int': 6414} |
| `chromeTabs` | {'int': 6414} |
| `chromeTabsProbedProfiles` | {'int': 6414} |
| `chromeUtilityPssKb` | {'int': 6414} |
| `desktopPssKb` | {'int': 6414} |
| `hostPssKb` | {'int': 6414} |
| `kind` | {'str': 6414} |
| `memAvailableKb` | {'int': 6414} |
| `memTotalKb` | {'int': 6414} |
| `otherPssKb` | {'int': 6414} |
| `processes` | {'int': 6414} |
| `pssFallbackProcesses` | {'int': 6414} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
