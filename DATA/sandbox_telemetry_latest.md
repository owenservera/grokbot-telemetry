# sandbox_telemetry_parse — 2026-11-20 02:10:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1534446 lines=3402
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3391 |
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
| `chromeBrowserPssKb` | {'int': 3391} |
| `chromeGpuPssKb` | {'int': 3391} |
| `chromeOtherPssKb` | {'int': 3391} |
| `chromeProcesses` | {'int': 3391} |
| `chromeProfiles` | {'int': 3391} |
| `chromeRendererMaxPssKb` | {'int': 3391} |
| `chromeRendererPssKb` | {'int': 3391} |
| `chromeRenderers` | {'int': 3391} |
| `chromeTabs` | {'int': 3391} |
| `chromeTabsProbedProfiles` | {'int': 3391} |
| `chromeUtilityPssKb` | {'int': 3391} |
| `desktopPssKb` | {'int': 3391} |
| `hostPssKb` | {'int': 3391} |
| `kind` | {'str': 3391} |
| `memAvailableKb` | {'int': 3391} |
| `memTotalKb` | {'int': 3391} |
| `otherPssKb` | {'int': 3391} |
| `processes` | {'int': 3391} |
| `pssFallbackProcesses` | {'int': 3391} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
