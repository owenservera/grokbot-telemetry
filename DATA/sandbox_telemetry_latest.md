# sandbox_telemetry_parse — 2026-11-18 07:40:34 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=733074 lines=1627
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1620 |
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
| `chromeBrowserPssKb` | {'int': 1620} |
| `chromeGpuPssKb` | {'int': 1620} |
| `chromeOtherPssKb` | {'int': 1620} |
| `chromeProcesses` | {'int': 1620} |
| `chromeProfiles` | {'int': 1620} |
| `chromeRendererMaxPssKb` | {'int': 1620} |
| `chromeRendererPssKb` | {'int': 1620} |
| `chromeRenderers` | {'int': 1620} |
| `chromeTabs` | {'int': 1620} |
| `chromeTabsProbedProfiles` | {'int': 1620} |
| `chromeUtilityPssKb` | {'int': 1620} |
| `desktopPssKb` | {'int': 1620} |
| `hostPssKb` | {'int': 1620} |
| `kind` | {'str': 1620} |
| `memAvailableKb` | {'int': 1620} |
| `memTotalKb` | {'int': 1620} |
| `otherPssKb` | {'int': 1620} |
| `processes` | {'int': 1620} |
| `pssFallbackProcesses` | {'int': 1620} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
