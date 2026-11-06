# sandbox_telemetry_parse — 2026-11-06 12:04:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=4161 lines=15
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 8 |
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
| `chromeBrowserPssKb` | {'int': 8} |
| `chromeGpuPssKb` | {'int': 8} |
| `chromeOtherPssKb` | {'int': 8} |
| `chromeProcesses` | {'int': 8} |
| `chromeProfiles` | {'int': 8} |
| `chromeRendererMaxPssKb` | {'int': 8} |
| `chromeRendererPssKb` | {'int': 8} |
| `chromeRenderers` | {'int': 8} |
| `chromeTabs` | {'int': 8} |
| `chromeTabsProbedProfiles` | {'int': 8} |
| `chromeUtilityPssKb` | {'int': 8} |
| `desktopPssKb` | {'int': 8} |
| `hostPssKb` | {'int': 8} |
| `kind` | {'str': 8} |
| `memAvailableKb` | {'int': 8} |
| `memTotalKb` | {'int': 8} |
| `otherPssKb` | {'int': 8} |
| `processes` | {'int': 8} |
| `pssFallbackProcesses` | {'int': 8} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
