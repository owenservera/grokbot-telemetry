# sandbox_telemetry_parse — 2026-11-25 22:50:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2957751 lines=6552
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6537 |
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
| `chromeBrowserPssKb` | {'int': 6537} |
| `chromeGpuPssKb` | {'int': 6537} |
| `chromeOtherPssKb` | {'int': 6537} |
| `chromeProcesses` | {'int': 6537} |
| `chromeProfiles` | {'int': 6537} |
| `chromeRendererMaxPssKb` | {'int': 6537} |
| `chromeRendererPssKb` | {'int': 6537} |
| `chromeRenderers` | {'int': 6537} |
| `chromeTabs` | {'int': 6537} |
| `chromeTabsProbedProfiles` | {'int': 6537} |
| `chromeUtilityPssKb` | {'int': 6537} |
| `desktopPssKb` | {'int': 6537} |
| `hostPssKb` | {'int': 6537} |
| `kind` | {'str': 6537} |
| `memAvailableKb` | {'int': 6537} |
| `memTotalKb` | {'int': 6537} |
| `otherPssKb` | {'int': 6537} |
| `processes` | {'int': 6537} |
| `pssFallbackProcesses` | {'int': 6537} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
