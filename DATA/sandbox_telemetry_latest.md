# sandbox_telemetry_parse — 2026-11-11 04:06:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1465278 lines=3246
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3237 |
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
| `chromeBrowserPssKb` | {'int': 3237} |
| `chromeGpuPssKb` | {'int': 3237} |
| `chromeOtherPssKb` | {'int': 3237} |
| `chromeProcesses` | {'int': 3237} |
| `chromeProfiles` | {'int': 3237} |
| `chromeRendererMaxPssKb` | {'int': 3237} |
| `chromeRendererPssKb` | {'int': 3237} |
| `chromeRenderers` | {'int': 3237} |
| `chromeTabs` | {'int': 3237} |
| `chromeTabsProbedProfiles` | {'int': 3237} |
| `chromeUtilityPssKb` | {'int': 3237} |
| `desktopPssKb` | {'int': 3237} |
| `hostPssKb` | {'int': 3237} |
| `kind` | {'str': 3237} |
| `memAvailableKb` | {'int': 3237} |
| `memTotalKb` | {'int': 3237} |
| `otherPssKb` | {'int': 3237} |
| `processes` | {'int': 3237} |
| `pssFallbackProcesses` | {'int': 3237} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
