# sandbox_telemetry_parse — 2026-11-26 16:36:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3333854 lines=7385
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7368 |
| `egress_tunnel` | 13 |
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
| `attempt` | {'int': 13} |
| `exitStatus` | {'int': 6} |
| `kind` | {'str': 13} |
| `outcome` | {'str': 13} |
| `runtimeS` | {'int': 6} |

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
| `chromeBrowserPssKb` | {'int': 7368} |
| `chromeGpuPssKb` | {'int': 7368} |
| `chromeOtherPssKb` | {'int': 7368} |
| `chromeProcesses` | {'int': 7368} |
| `chromeProfiles` | {'int': 7368} |
| `chromeRendererMaxPssKb` | {'int': 7368} |
| `chromeRendererPssKb` | {'int': 7368} |
| `chromeRenderers` | {'int': 7368} |
| `chromeTabs` | {'int': 7368} |
| `chromeTabsProbedProfiles` | {'int': 7368} |
| `chromeUtilityPssKb` | {'int': 7368} |
| `desktopPssKb` | {'int': 7368} |
| `hostPssKb` | {'int': 7368} |
| `kind` | {'str': 7368} |
| `memAvailableKb` | {'int': 7368} |
| `memTotalKb` | {'int': 7368} |
| `otherPssKb` | {'int': 7368} |
| `processes` | {'int': 7368} |
| `pssFallbackProcesses` | {'int': 7368} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
