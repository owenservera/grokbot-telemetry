# sandbox_telemetry_parse — 2026-11-27 20:38:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=582897 lines=1295
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1287 |
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
| `chromeBrowserPssKb` | {'int': 1287} |
| `chromeGpuPssKb` | {'int': 1287} |
| `chromeOtherPssKb` | {'int': 1287} |
| `chromeProcesses` | {'int': 1287} |
| `chromeProfiles` | {'int': 1287} |
| `chromeRendererMaxPssKb` | {'int': 1287} |
| `chromeRendererPssKb` | {'int': 1287} |
| `chromeRenderers` | {'int': 1287} |
| `chromeTabs` | {'int': 1287} |
| `chromeTabsProbedProfiles` | {'int': 1287} |
| `chromeUtilityPssKb` | {'int': 1287} |
| `desktopPssKb` | {'int': 1287} |
| `hostPssKb` | {'int': 1287} |
| `kind` | {'str': 1287} |
| `memAvailableKb` | {'int': 1287} |
| `memTotalKb` | {'int': 1287} |
| `otherPssKb` | {'int': 1287} |
| `processes` | {'int': 1287} |
| `pssFallbackProcesses` | {'int': 1287} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
