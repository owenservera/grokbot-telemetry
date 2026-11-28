# sandbox_telemetry_parse — 2026-11-28 12:41:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=889633 lines=1973
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1965 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

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
| `chromeBrowserPssKb` | {'int': 1965} |
| `chromeGpuPssKb` | {'int': 1965} |
| `chromeOtherPssKb` | {'int': 1965} |
| `chromeProcesses` | {'int': 1965} |
| `chromeProfiles` | {'int': 1965} |
| `chromeRendererMaxPssKb` | {'int': 1965} |
| `chromeRendererPssKb` | {'int': 1965} |
| `chromeRenderers` | {'int': 1965} |
| `chromeTabs` | {'int': 1965} |
| `chromeTabsProbedProfiles` | {'int': 1965} |
| `chromeUtilityPssKb` | {'int': 1965} |
| `desktopPssKb` | {'int': 1965} |
| `hostPssKb` | {'int': 1965} |
| `kind` | {'str': 1965} |
| `memAvailableKb` | {'int': 1965} |
| `memTotalKb` | {'int': 1965} |
| `otherPssKb` | {'int': 1965} |
| `processes` | {'int': 1965} |
| `pssFallbackProcesses` | {'int': 1965} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
