# sandbox_telemetry_parse — 2026-11-09 15:28:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=717228 lines=1593
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1584 |
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
| `chromeBrowserPssKb` | {'int': 1584} |
| `chromeGpuPssKb` | {'int': 1584} |
| `chromeOtherPssKb` | {'int': 1584} |
| `chromeProcesses` | {'int': 1584} |
| `chromeProfiles` | {'int': 1584} |
| `chromeRendererMaxPssKb` | {'int': 1584} |
| `chromeRendererPssKb` | {'int': 1584} |
| `chromeRenderers` | {'int': 1584} |
| `chromeTabs` | {'int': 1584} |
| `chromeTabsProbedProfiles` | {'int': 1584} |
| `chromeUtilityPssKb` | {'int': 1584} |
| `desktopPssKb` | {'int': 1584} |
| `hostPssKb` | {'int': 1584} |
| `kind` | {'str': 1584} |
| `memAvailableKb` | {'int': 1584} |
| `memTotalKb` | {'int': 1584} |
| `otherPssKb` | {'int': 1584} |
| `processes` | {'int': 1584} |
| `pssFallbackProcesses` | {'int': 1584} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
