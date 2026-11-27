# sandbox_telemetry_parse — 2026-11-27 19:06:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=552114 lines=1227
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1219 |
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
| `chromeBrowserPssKb` | {'int': 1219} |
| `chromeGpuPssKb` | {'int': 1219} |
| `chromeOtherPssKb` | {'int': 1219} |
| `chromeProcesses` | {'int': 1219} |
| `chromeProfiles` | {'int': 1219} |
| `chromeRendererMaxPssKb` | {'int': 1219} |
| `chromeRendererPssKb` | {'int': 1219} |
| `chromeRenderers` | {'int': 1219} |
| `chromeTabs` | {'int': 1219} |
| `chromeTabsProbedProfiles` | {'int': 1219} |
| `chromeUtilityPssKb` | {'int': 1219} |
| `desktopPssKb` | {'int': 1219} |
| `hostPssKb` | {'int': 1219} |
| `kind` | {'str': 1219} |
| `memAvailableKb` | {'int': 1219} |
| `memTotalKb` | {'int': 1219} |
| `otherPssKb` | {'int': 1219} |
| `processes` | {'int': 1219} |
| `pssFallbackProcesses` | {'int': 1219} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
