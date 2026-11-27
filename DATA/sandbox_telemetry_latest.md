# sandbox_telemetry_parse — 2026-11-27 09:00:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=335332 lines=748
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 740 |
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
| `chromeBrowserPssKb` | {'int': 740} |
| `chromeGpuPssKb` | {'int': 740} |
| `chromeOtherPssKb` | {'int': 740} |
| `chromeProcesses` | {'int': 740} |
| `chromeProfiles` | {'int': 740} |
| `chromeRendererMaxPssKb` | {'int': 740} |
| `chromeRendererPssKb` | {'int': 740} |
| `chromeRenderers` | {'int': 740} |
| `chromeTabs` | {'int': 740} |
| `chromeTabsProbedProfiles` | {'int': 740} |
| `chromeUtilityPssKb` | {'int': 740} |
| `desktopPssKb` | {'int': 740} |
| `hostPssKb` | {'int': 740} |
| `kind` | {'str': 740} |
| `memAvailableKb` | {'int': 740} |
| `memTotalKb` | {'int': 740} |
| `otherPssKb` | {'int': 740} |
| `processes` | {'int': 740} |
| `pssFallbackProcesses` | {'int': 740} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
