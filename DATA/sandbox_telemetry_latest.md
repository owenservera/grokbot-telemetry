# sandbox_telemetry_parse — 2026-11-09 08:07:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=563388 lines=1253
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1244 |
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
| `chromeBrowserPssKb` | {'int': 1244} |
| `chromeGpuPssKb` | {'int': 1244} |
| `chromeOtherPssKb` | {'int': 1244} |
| `chromeProcesses` | {'int': 1244} |
| `chromeProfiles` | {'int': 1244} |
| `chromeRendererMaxPssKb` | {'int': 1244} |
| `chromeRendererPssKb` | {'int': 1244} |
| `chromeRenderers` | {'int': 1244} |
| `chromeTabs` | {'int': 1244} |
| `chromeTabsProbedProfiles` | {'int': 1244} |
| `chromeUtilityPssKb` | {'int': 1244} |
| `desktopPssKb` | {'int': 1244} |
| `hostPssKb` | {'int': 1244} |
| `kind` | {'str': 1244} |
| `memAvailableKb` | {'int': 1244} |
| `memTotalKb` | {'int': 1244} |
| `otherPssKb` | {'int': 1244} |
| `processes` | {'int': 1244} |
| `pssFallbackProcesses` | {'int': 1244} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
