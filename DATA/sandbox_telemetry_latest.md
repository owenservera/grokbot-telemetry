# sandbox_telemetry_parse — 2026-11-18 09:50:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=770140 lines=1709
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1702 |
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
| `chromeBrowserPssKb` | {'int': 1702} |
| `chromeGpuPssKb` | {'int': 1702} |
| `chromeOtherPssKb` | {'int': 1702} |
| `chromeProcesses` | {'int': 1702} |
| `chromeProfiles` | {'int': 1702} |
| `chromeRendererMaxPssKb` | {'int': 1702} |
| `chromeRendererPssKb` | {'int': 1702} |
| `chromeRenderers` | {'int': 1702} |
| `chromeTabs` | {'int': 1702} |
| `chromeTabsProbedProfiles` | {'int': 1702} |
| `chromeUtilityPssKb` | {'int': 1702} |
| `desktopPssKb` | {'int': 1702} |
| `hostPssKb` | {'int': 1702} |
| `kind` | {'str': 1702} |
| `memAvailableKb` | {'int': 1702} |
| `memTotalKb` | {'int': 1702} |
| `otherPssKb` | {'int': 1702} |
| `processes` | {'int': 1702} |
| `pssFallbackProcesses` | {'int': 1702} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
