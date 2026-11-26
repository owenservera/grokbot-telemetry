# sandbox_telemetry_parse — 2026-11-26 21:08:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=87459 lines=200
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 192 |
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
| `chromeBrowserPssKb` | {'int': 192} |
| `chromeGpuPssKb` | {'int': 192} |
| `chromeOtherPssKb` | {'int': 192} |
| `chromeProcesses` | {'int': 192} |
| `chromeProfiles` | {'int': 192} |
| `chromeRendererMaxPssKb` | {'int': 192} |
| `chromeRendererPssKb` | {'int': 192} |
| `chromeRenderers` | {'int': 192} |
| `chromeTabs` | {'int': 192} |
| `chromeTabsProbedProfiles` | {'int': 192} |
| `chromeUtilityPssKb` | {'int': 192} |
| `desktopPssKb` | {'int': 192} |
| `hostPssKb` | {'int': 192} |
| `kind` | {'str': 192} |
| `memAvailableKb` | {'int': 192} |
| `memTotalKb` | {'int': 192} |
| `otherPssKb` | {'int': 192} |
| `processes` | {'int': 192} |
| `pssFallbackProcesses` | {'int': 192} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
