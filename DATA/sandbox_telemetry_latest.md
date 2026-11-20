# sandbox_telemetry_parse — 2026-11-20 05:22:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1585974 lines=3516
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3505 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3505} |
| `chromeGpuPssKb` | {'int': 3505} |
| `chromeOtherPssKb` | {'int': 3505} |
| `chromeProcesses` | {'int': 3505} |
| `chromeProfiles` | {'int': 3505} |
| `chromeRendererMaxPssKb` | {'int': 3505} |
| `chromeRendererPssKb` | {'int': 3505} |
| `chromeRenderers` | {'int': 3505} |
| `chromeTabs` | {'int': 3505} |
| `chromeTabsProbedProfiles` | {'int': 3505} |
| `chromeUtilityPssKb` | {'int': 3505} |
| `desktopPssKb` | {'int': 3505} |
| `hostPssKb` | {'int': 3505} |
| `kind` | {'str': 3505} |
| `memAvailableKb` | {'int': 3505} |
| `memTotalKb` | {'int': 3505} |
| `otherPssKb` | {'int': 3505} |
| `processes` | {'int': 3505} |
| `pssFallbackProcesses` | {'int': 3505} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
