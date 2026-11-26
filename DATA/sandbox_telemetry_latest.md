# sandbox_telemetry_parse — 2026-11-26 20:51:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=81131 lines=186
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 178 |
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
| `chromeBrowserPssKb` | {'int': 178} |
| `chromeGpuPssKb` | {'int': 178} |
| `chromeOtherPssKb` | {'int': 178} |
| `chromeProcesses` | {'int': 178} |
| `chromeProfiles` | {'int': 178} |
| `chromeRendererMaxPssKb` | {'int': 178} |
| `chromeRendererPssKb` | {'int': 178} |
| `chromeRenderers` | {'int': 178} |
| `chromeTabs` | {'int': 178} |
| `chromeTabsProbedProfiles` | {'int': 178} |
| `chromeUtilityPssKb` | {'int': 178} |
| `desktopPssKb` | {'int': 178} |
| `hostPssKb` | {'int': 178} |
| `kind` | {'str': 178} |
| `memAvailableKb` | {'int': 178} |
| `memTotalKb` | {'int': 178} |
| `otherPssKb` | {'int': 178} |
| `processes` | {'int': 178} |
| `pssFallbackProcesses` | {'int': 178} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
