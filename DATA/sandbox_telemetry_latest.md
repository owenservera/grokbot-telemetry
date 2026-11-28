# sandbox_telemetry_parse — 2026-11-28 16:46:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=969744 lines=2150
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2142 |
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
| `chromeBrowserPssKb` | {'int': 2142} |
| `chromeGpuPssKb` | {'int': 2142} |
| `chromeOtherPssKb` | {'int': 2142} |
| `chromeProcesses` | {'int': 2142} |
| `chromeProfiles` | {'int': 2142} |
| `chromeRendererMaxPssKb` | {'int': 2142} |
| `chromeRendererPssKb` | {'int': 2142} |
| `chromeRenderers` | {'int': 2142} |
| `chromeTabs` | {'int': 2142} |
| `chromeTabsProbedProfiles` | {'int': 2142} |
| `chromeUtilityPssKb` | {'int': 2142} |
| `desktopPssKb` | {'int': 2142} |
| `hostPssKb` | {'int': 2142} |
| `kind` | {'str': 2142} |
| `memAvailableKb` | {'int': 2142} |
| `memTotalKb` | {'int': 2142} |
| `otherPssKb` | {'int': 2142} |
| `processes` | {'int': 2142} |
| `pssFallbackProcesses` | {'int': 2142} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
