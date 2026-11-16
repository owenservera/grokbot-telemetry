# sandbox_telemetry_parse — 2026-11-16 19:56:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=100050 lines=227
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 220 |
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
| `chromeBrowserPssKb` | {'int': 220} |
| `chromeGpuPssKb` | {'int': 220} |
| `chromeOtherPssKb` | {'int': 220} |
| `chromeProcesses` | {'int': 220} |
| `chromeProfiles` | {'int': 220} |
| `chromeRendererMaxPssKb` | {'int': 220} |
| `chromeRendererPssKb` | {'int': 220} |
| `chromeRenderers` | {'int': 220} |
| `chromeTabs` | {'int': 220} |
| `chromeTabsProbedProfiles` | {'int': 220} |
| `chromeUtilityPssKb` | {'int': 220} |
| `desktopPssKb` | {'int': 220} |
| `hostPssKb` | {'int': 220} |
| `kind` | {'str': 220} |
| `memAvailableKb` | {'int': 220} |
| `memTotalKb` | {'int': 220} |
| `otherPssKb` | {'int': 220} |
| `processes` | {'int': 220} |
| `pssFallbackProcesses` | {'int': 220} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
