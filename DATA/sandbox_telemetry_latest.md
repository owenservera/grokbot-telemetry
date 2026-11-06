# sandbox_telemetry_parse — 2026-11-07 00:00:09 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=222811 lines=500
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 491 |
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
| `chromeBrowserPssKb` | {'int': 491} |
| `chromeGpuPssKb` | {'int': 491} |
| `chromeOtherPssKb` | {'int': 491} |
| `chromeProcesses` | {'int': 491} |
| `chromeProfiles` | {'int': 491} |
| `chromeRendererMaxPssKb` | {'int': 491} |
| `chromeRendererPssKb` | {'int': 491} |
| `chromeRenderers` | {'int': 491} |
| `chromeTabs` | {'int': 491} |
| `chromeTabsProbedProfiles` | {'int': 491} |
| `chromeUtilityPssKb` | {'int': 491} |
| `desktopPssKb` | {'int': 491} |
| `hostPssKb` | {'int': 491} |
| `kind` | {'str': 491} |
| `memAvailableKb` | {'int': 491} |
| `memTotalKb` | {'int': 491} |
| `otherPssKb` | {'int': 491} |
| `processes` | {'int': 491} |
| `pssFallbackProcesses` | {'int': 491} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
