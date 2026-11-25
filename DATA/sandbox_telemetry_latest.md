# sandbox_telemetry_parse — 2026-11-25 09:48:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2701822 lines=5986
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5971 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 5971} |
| `chromeGpuPssKb` | {'int': 5971} |
| `chromeOtherPssKb` | {'int': 5971} |
| `chromeProcesses` | {'int': 5971} |
| `chromeProfiles` | {'int': 5971} |
| `chromeRendererMaxPssKb` | {'int': 5971} |
| `chromeRendererPssKb` | {'int': 5971} |
| `chromeRenderers` | {'int': 5971} |
| `chromeTabs` | {'int': 5971} |
| `chromeTabsProbedProfiles` | {'int': 5971} |
| `chromeUtilityPssKb` | {'int': 5971} |
| `desktopPssKb` | {'int': 5971} |
| `hostPssKb` | {'int': 5971} |
| `kind` | {'str': 5971} |
| `memAvailableKb` | {'int': 5971} |
| `memTotalKb` | {'int': 5971} |
| `otherPssKb` | {'int': 5971} |
| `processes` | {'int': 5971} |
| `pssFallbackProcesses` | {'int': 5971} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
