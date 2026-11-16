# sandbox_telemetry_parse — 2026-11-16 16:45:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=45787 lines=107
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 100 |
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
| `chromeBrowserPssKb` | {'int': 100} |
| `chromeGpuPssKb` | {'int': 100} |
| `chromeOtherPssKb` | {'int': 100} |
| `chromeProcesses` | {'int': 100} |
| `chromeProfiles` | {'int': 100} |
| `chromeRendererMaxPssKb` | {'int': 100} |
| `chromeRendererPssKb` | {'int': 100} |
| `chromeRenderers` | {'int': 100} |
| `chromeTabs` | {'int': 100} |
| `chromeTabsProbedProfiles` | {'int': 100} |
| `chromeUtilityPssKb` | {'int': 100} |
| `desktopPssKb` | {'int': 100} |
| `hostPssKb` | {'int': 100} |
| `kind` | {'str': 100} |
| `memAvailableKb` | {'int': 100} |
| `memTotalKb` | {'int': 100} |
| `otherPssKb` | {'int': 100} |
| `processes` | {'int': 100} |
| `pssFallbackProcesses` | {'int': 100} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
