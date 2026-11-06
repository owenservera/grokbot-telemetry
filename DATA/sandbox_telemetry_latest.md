# sandbox_telemetry_parse — 2026-11-06 13:09:09 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=23609 lines=58
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 51 |
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
| `chromeBrowserPssKb` | {'int': 51} |
| `chromeGpuPssKb` | {'int': 51} |
| `chromeOtherPssKb` | {'int': 51} |
| `chromeProcesses` | {'int': 51} |
| `chromeProfiles` | {'int': 51} |
| `chromeRendererMaxPssKb` | {'int': 51} |
| `chromeRendererPssKb` | {'int': 51} |
| `chromeRenderers` | {'int': 51} |
| `chromeTabs` | {'int': 51} |
| `chromeTabsProbedProfiles` | {'int': 51} |
| `chromeUtilityPssKb` | {'int': 51} |
| `desktopPssKb` | {'int': 51} |
| `hostPssKb` | {'int': 51} |
| `kind` | {'str': 51} |
| `memAvailableKb` | {'int': 51} |
| `memTotalKb` | {'int': 51} |
| `otherPssKb` | {'int': 51} |
| `processes` | {'int': 51} |
| `pssFallbackProcesses` | {'int': 51} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
