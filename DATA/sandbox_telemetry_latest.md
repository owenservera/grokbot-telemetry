# sandbox_telemetry_parse — 2026-11-25 16:38:21 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2836571 lines=6284
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6269 |
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
| `chromeBrowserPssKb` | {'int': 6269} |
| `chromeGpuPssKb` | {'int': 6269} |
| `chromeOtherPssKb` | {'int': 6269} |
| `chromeProcesses` | {'int': 6269} |
| `chromeProfiles` | {'int': 6269} |
| `chromeRendererMaxPssKb` | {'int': 6269} |
| `chromeRendererPssKb` | {'int': 6269} |
| `chromeRenderers` | {'int': 6269} |
| `chromeTabs` | {'int': 6269} |
| `chromeTabsProbedProfiles` | {'int': 6269} |
| `chromeUtilityPssKb` | {'int': 6269} |
| `desktopPssKb` | {'int': 6269} |
| `hostPssKb` | {'int': 6269} |
| `kind` | {'str': 6269} |
| `memAvailableKb` | {'int': 6269} |
| `memTotalKb` | {'int': 6269} |
| `otherPssKb` | {'int': 6269} |
| `processes` | {'int': 6269} |
| `pssFallbackProcesses` | {'int': 6269} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
