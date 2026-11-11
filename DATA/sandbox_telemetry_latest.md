# sandbox_telemetry_parse — 2026-11-11 04:17:23 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1468894 lines=3254
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3245 |
| `egress_tunnel` | 5 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 3245} |
| `chromeGpuPssKb` | {'int': 3245} |
| `chromeOtherPssKb` | {'int': 3245} |
| `chromeProcesses` | {'int': 3245} |
| `chromeProfiles` | {'int': 3245} |
| `chromeRendererMaxPssKb` | {'int': 3245} |
| `chromeRendererPssKb` | {'int': 3245} |
| `chromeRenderers` | {'int': 3245} |
| `chromeTabs` | {'int': 3245} |
| `chromeTabsProbedProfiles` | {'int': 3245} |
| `chromeUtilityPssKb` | {'int': 3245} |
| `desktopPssKb` | {'int': 3245} |
| `hostPssKb` | {'int': 3245} |
| `kind` | {'str': 3245} |
| `memAvailableKb` | {'int': 3245} |
| `memTotalKb` | {'int': 3245} |
| `otherPssKb` | {'int': 3245} |
| `processes` | {'int': 3245} |
| `pssFallbackProcesses` | {'int': 3245} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
