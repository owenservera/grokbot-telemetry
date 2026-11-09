# sandbox_telemetry_parse — 2026-11-09 16:38:54 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=744861 lines=1654
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1645 |
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
| `chromeBrowserPssKb` | {'int': 1645} |
| `chromeGpuPssKb` | {'int': 1645} |
| `chromeOtherPssKb` | {'int': 1645} |
| `chromeProcesses` | {'int': 1645} |
| `chromeProfiles` | {'int': 1645} |
| `chromeRendererMaxPssKb` | {'int': 1645} |
| `chromeRendererPssKb` | {'int': 1645} |
| `chromeRenderers` | {'int': 1645} |
| `chromeTabs` | {'int': 1645} |
| `chromeTabsProbedProfiles` | {'int': 1645} |
| `chromeUtilityPssKb` | {'int': 1645} |
| `desktopPssKb` | {'int': 1645} |
| `hostPssKb` | {'int': 1645} |
| `kind` | {'str': 1645} |
| `memAvailableKb` | {'int': 1645} |
| `memTotalKb` | {'int': 1645} |
| `otherPssKb` | {'int': 1645} |
| `processes` | {'int': 1645} |
| `pssFallbackProcesses` | {'int': 1645} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
