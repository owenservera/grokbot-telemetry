# sandbox_telemetry_parse — 2026-11-19 18:23:57 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1389726 lines=3082
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3071 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3071} |
| `chromeGpuPssKb` | {'int': 3071} |
| `chromeOtherPssKb` | {'int': 3071} |
| `chromeProcesses` | {'int': 3071} |
| `chromeProfiles` | {'int': 3071} |
| `chromeRendererMaxPssKb` | {'int': 3071} |
| `chromeRendererPssKb` | {'int': 3071} |
| `chromeRenderers` | {'int': 3071} |
| `chromeTabs` | {'int': 3071} |
| `chromeTabsProbedProfiles` | {'int': 3071} |
| `chromeUtilityPssKb` | {'int': 3071} |
| `desktopPssKb` | {'int': 3071} |
| `hostPssKb` | {'int': 3071} |
| `kind` | {'str': 3071} |
| `memAvailableKb` | {'int': 3071} |
| `memTotalKb` | {'int': 3071} |
| `otherPssKb` | {'int': 3071} |
| `processes` | {'int': 3071} |
| `pssFallbackProcesses` | {'int': 3071} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
