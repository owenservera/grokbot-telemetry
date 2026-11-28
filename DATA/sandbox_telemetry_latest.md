# sandbox_telemetry_parse — 2026-11-28 20:50:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1054432 lines=2337
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2329 |
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
| `chromeBrowserPssKb` | {'int': 2329} |
| `chromeGpuPssKb` | {'int': 2329} |
| `chromeOtherPssKb` | {'int': 2329} |
| `chromeProcesses` | {'int': 2329} |
| `chromeProfiles` | {'int': 2329} |
| `chromeRendererMaxPssKb` | {'int': 2329} |
| `chromeRendererPssKb` | {'int': 2329} |
| `chromeRenderers` | {'int': 2329} |
| `chromeTabs` | {'int': 2329} |
| `chromeTabsProbedProfiles` | {'int': 2329} |
| `chromeUtilityPssKb` | {'int': 2329} |
| `desktopPssKb` | {'int': 2329} |
| `hostPssKb` | {'int': 2329} |
| `kind` | {'str': 2329} |
| `memAvailableKb` | {'int': 2329} |
| `memTotalKb` | {'int': 2329} |
| `otherPssKb` | {'int': 2329} |
| `processes` | {'int': 2329} |
| `pssFallbackProcesses` | {'int': 2329} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
