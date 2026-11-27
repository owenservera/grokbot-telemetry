# sandbox_telemetry_parse — 2026-11-27 21:15:36 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=593300 lines=1318
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1310 |
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
| `chromeBrowserPssKb` | {'int': 1310} |
| `chromeGpuPssKb` | {'int': 1310} |
| `chromeOtherPssKb` | {'int': 1310} |
| `chromeProcesses` | {'int': 1310} |
| `chromeProfiles` | {'int': 1310} |
| `chromeRendererMaxPssKb` | {'int': 1310} |
| `chromeRendererPssKb` | {'int': 1310} |
| `chromeRenderers` | {'int': 1310} |
| `chromeTabs` | {'int': 1310} |
| `chromeTabsProbedProfiles` | {'int': 1310} |
| `chromeUtilityPssKb` | {'int': 1310} |
| `desktopPssKb` | {'int': 1310} |
| `hostPssKb` | {'int': 1310} |
| `kind` | {'str': 1310} |
| `memAvailableKb` | {'int': 1310} |
| `memTotalKb` | {'int': 1310} |
| `otherPssKb` | {'int': 1310} |
| `processes` | {'int': 1310} |
| `pssFallbackProcesses` | {'int': 1310} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
