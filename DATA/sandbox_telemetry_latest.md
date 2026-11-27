# sandbox_telemetry_parse — 2026-11-27 13:01:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=425809 lines=948
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 940 |
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
| `chromeBrowserPssKb` | {'int': 940} |
| `chromeGpuPssKb` | {'int': 940} |
| `chromeOtherPssKb` | {'int': 940} |
| `chromeProcesses` | {'int': 940} |
| `chromeProfiles` | {'int': 940} |
| `chromeRendererMaxPssKb` | {'int': 940} |
| `chromeRendererPssKb` | {'int': 940} |
| `chromeRenderers` | {'int': 940} |
| `chromeTabs` | {'int': 940} |
| `chromeTabsProbedProfiles` | {'int': 940} |
| `chromeUtilityPssKb` | {'int': 940} |
| `desktopPssKb` | {'int': 940} |
| `hostPssKb` | {'int': 940} |
| `kind` | {'str': 940} |
| `memAvailableKb` | {'int': 940} |
| `memTotalKb` | {'int': 940} |
| `otherPssKb` | {'int': 940} |
| `processes` | {'int': 940} |
| `pssFallbackProcesses` | {'int': 940} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
