# sandbox_telemetry_parse — 2026-11-06 20:20:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=152265 lines=344
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 335 |
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
| `chromeBrowserPssKb` | {'int': 335} |
| `chromeGpuPssKb` | {'int': 335} |
| `chromeOtherPssKb` | {'int': 335} |
| `chromeProcesses` | {'int': 335} |
| `chromeProfiles` | {'int': 335} |
| `chromeRendererMaxPssKb` | {'int': 335} |
| `chromeRendererPssKb` | {'int': 335} |
| `chromeRenderers` | {'int': 335} |
| `chromeTabs` | {'int': 335} |
| `chromeTabsProbedProfiles` | {'int': 335} |
| `chromeUtilityPssKb` | {'int': 335} |
| `desktopPssKb` | {'int': 335} |
| `hostPssKb` | {'int': 335} |
| `kind` | {'str': 335} |
| `memAvailableKb` | {'int': 335} |
| `memTotalKb` | {'int': 335} |
| `otherPssKb` | {'int': 335} |
| `processes` | {'int': 335} |
| `pssFallbackProcesses` | {'int': 335} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
