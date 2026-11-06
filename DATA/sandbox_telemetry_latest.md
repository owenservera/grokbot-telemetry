# sandbox_telemetry_parse — 2026-11-06 19:09:11 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=122862 lines=279
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 270 |
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
| `chromeBrowserPssKb` | {'int': 270} |
| `chromeGpuPssKb` | {'int': 270} |
| `chromeOtherPssKb` | {'int': 270} |
| `chromeProcesses` | {'int': 270} |
| `chromeProfiles` | {'int': 270} |
| `chromeRendererMaxPssKb` | {'int': 270} |
| `chromeRendererPssKb` | {'int': 270} |
| `chromeRenderers` | {'int': 270} |
| `chromeTabs` | {'int': 270} |
| `chromeTabsProbedProfiles` | {'int': 270} |
| `chromeUtilityPssKb` | {'int': 270} |
| `desktopPssKb` | {'int': 270} |
| `hostPssKb` | {'int': 270} |
| `kind` | {'str': 270} |
| `memAvailableKb` | {'int': 270} |
| `memTotalKb` | {'int': 270} |
| `otherPssKb` | {'int': 270} |
| `processes` | {'int': 270} |
| `pssFallbackProcesses` | {'int': 270} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
