# sandbox_telemetry_parse — 2026-11-27 11:58:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=403644 lines=899
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 891 |
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
| `chromeBrowserPssKb` | {'int': 891} |
| `chromeGpuPssKb` | {'int': 891} |
| `chromeOtherPssKb` | {'int': 891} |
| `chromeProcesses` | {'int': 891} |
| `chromeProfiles` | {'int': 891} |
| `chromeRendererMaxPssKb` | {'int': 891} |
| `chromeRendererPssKb` | {'int': 891} |
| `chromeRenderers` | {'int': 891} |
| `chromeTabs` | {'int': 891} |
| `chromeTabsProbedProfiles` | {'int': 891} |
| `chromeUtilityPssKb` | {'int': 891} |
| `desktopPssKb` | {'int': 891} |
| `hostPssKb` | {'int': 891} |
| `kind` | {'str': 891} |
| `memAvailableKb` | {'int': 891} |
| `memTotalKb` | {'int': 891} |
| `otherPssKb` | {'int': 891} |
| `processes` | {'int': 891} |
| `pssFallbackProcesses` | {'int': 891} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
