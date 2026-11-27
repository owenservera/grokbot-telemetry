# sandbox_telemetry_parse — 2026-11-27 08:30:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=326740 lines=729
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 721 |
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
| `chromeBrowserPssKb` | {'int': 721} |
| `chromeGpuPssKb` | {'int': 721} |
| `chromeOtherPssKb` | {'int': 721} |
| `chromeProcesses` | {'int': 721} |
| `chromeProfiles` | {'int': 721} |
| `chromeRendererMaxPssKb` | {'int': 721} |
| `chromeRendererPssKb` | {'int': 721} |
| `chromeRenderers` | {'int': 721} |
| `chromeTabs` | {'int': 721} |
| `chromeTabsProbedProfiles` | {'int': 721} |
| `chromeUtilityPssKb` | {'int': 721} |
| `desktopPssKb` | {'int': 721} |
| `hostPssKb` | {'int': 721} |
| `kind` | {'str': 721} |
| `memAvailableKb` | {'int': 721} |
| `memTotalKb` | {'int': 721} |
| `otherPssKb` | {'int': 721} |
| `processes` | {'int': 721} |
| `pssFallbackProcesses` | {'int': 721} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
