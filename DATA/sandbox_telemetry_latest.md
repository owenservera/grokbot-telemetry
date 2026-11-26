# sandbox_telemetry_parse — 2026-11-26 18:21:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=29131 lines=71
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 63 |
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
| `chromeBrowserPssKb` | {'int': 63} |
| `chromeGpuPssKb` | {'int': 63} |
| `chromeOtherPssKb` | {'int': 63} |
| `chromeProcesses` | {'int': 63} |
| `chromeProfiles` | {'int': 63} |
| `chromeRendererMaxPssKb` | {'int': 63} |
| `chromeRendererPssKb` | {'int': 63} |
| `chromeRenderers` | {'int': 63} |
| `chromeTabs` | {'int': 63} |
| `chromeTabsProbedProfiles` | {'int': 63} |
| `chromeUtilityPssKb` | {'int': 63} |
| `desktopPssKb` | {'int': 63} |
| `hostPssKb` | {'int': 63} |
| `kind` | {'str': 63} |
| `memAvailableKb` | {'int': 63} |
| `memTotalKb` | {'int': 63} |
| `otherPssKb` | {'int': 63} |
| `processes` | {'int': 63} |
| `pssFallbackProcesses` | {'int': 63} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
