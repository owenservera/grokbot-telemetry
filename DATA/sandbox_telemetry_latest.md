# sandbox_telemetry_parse — 2026-11-07 15:56:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=527191 lines=1173
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1164 |
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
| `chromeBrowserPssKb` | {'int': 1164} |
| `chromeGpuPssKb` | {'int': 1164} |
| `chromeOtherPssKb` | {'int': 1164} |
| `chromeProcesses` | {'int': 1164} |
| `chromeProfiles` | {'int': 1164} |
| `chromeRendererMaxPssKb` | {'int': 1164} |
| `chromeRendererPssKb` | {'int': 1164} |
| `chromeRenderers` | {'int': 1164} |
| `chromeTabs` | {'int': 1164} |
| `chromeTabsProbedProfiles` | {'int': 1164} |
| `chromeUtilityPssKb` | {'int': 1164} |
| `desktopPssKb` | {'int': 1164} |
| `hostPssKb` | {'int': 1164} |
| `kind` | {'str': 1164} |
| `memAvailableKb` | {'int': 1164} |
| `memTotalKb` | {'int': 1164} |
| `otherPssKb` | {'int': 1164} |
| `processes` | {'int': 1164} |
| `pssFallbackProcesses` | {'int': 1164} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
