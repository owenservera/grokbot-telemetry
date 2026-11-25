# sandbox_telemetry_parse — 2026-11-25 02:42:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2557546 lines=5667
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5652 |
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
| `chromeBrowserPssKb` | {'int': 5652} |
| `chromeGpuPssKb` | {'int': 5652} |
| `chromeOtherPssKb` | {'int': 5652} |
| `chromeProcesses` | {'int': 5652} |
| `chromeProfiles` | {'int': 5652} |
| `chromeRendererMaxPssKb` | {'int': 5652} |
| `chromeRendererPssKb` | {'int': 5652} |
| `chromeRenderers` | {'int': 5652} |
| `chromeTabs` | {'int': 5652} |
| `chromeTabsProbedProfiles` | {'int': 5652} |
| `chromeUtilityPssKb` | {'int': 5652} |
| `desktopPssKb` | {'int': 5652} |
| `hostPssKb` | {'int': 5652} |
| `kind` | {'str': 5652} |
| `memAvailableKb` | {'int': 5652} |
| `memTotalKb` | {'int': 5652} |
| `otherPssKb` | {'int': 5652} |
| `processes` | {'int': 5652} |
| `pssFallbackProcesses` | {'int': 5652} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
