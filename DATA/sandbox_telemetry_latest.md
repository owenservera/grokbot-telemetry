# sandbox_telemetry_parse — 2026-11-17 21:00:36 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=537276 lines=1194
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1187 |
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
| `chromeBrowserPssKb` | {'int': 1187} |
| `chromeGpuPssKb` | {'int': 1187} |
| `chromeOtherPssKb` | {'int': 1187} |
| `chromeProcesses` | {'int': 1187} |
| `chromeProfiles` | {'int': 1187} |
| `chromeRendererMaxPssKb` | {'int': 1187} |
| `chromeRendererPssKb` | {'int': 1187} |
| `chromeRenderers` | {'int': 1187} |
| `chromeTabs` | {'int': 1187} |
| `chromeTabsProbedProfiles` | {'int': 1187} |
| `chromeUtilityPssKb` | {'int': 1187} |
| `desktopPssKb` | {'int': 1187} |
| `hostPssKb` | {'int': 1187} |
| `kind` | {'str': 1187} |
| `memAvailableKb` | {'int': 1187} |
| `memTotalKb` | {'int': 1187} |
| `otherPssKb` | {'int': 1187} |
| `processes` | {'int': 1187} |
| `pssFallbackProcesses` | {'int': 1187} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
