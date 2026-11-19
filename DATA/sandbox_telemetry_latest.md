# sandbox_telemetry_parse — 2026-11-19 22:21:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1465272 lines=3249
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3238 |
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
| `chromeBrowserPssKb` | {'int': 3238} |
| `chromeGpuPssKb` | {'int': 3238} |
| `chromeOtherPssKb` | {'int': 3238} |
| `chromeProcesses` | {'int': 3238} |
| `chromeProfiles` | {'int': 3238} |
| `chromeRendererMaxPssKb` | {'int': 3238} |
| `chromeRendererPssKb` | {'int': 3238} |
| `chromeRenderers` | {'int': 3238} |
| `chromeTabs` | {'int': 3238} |
| `chromeTabsProbedProfiles` | {'int': 3238} |
| `chromeUtilityPssKb` | {'int': 3238} |
| `desktopPssKb` | {'int': 3238} |
| `hostPssKb` | {'int': 3238} |
| `kind` | {'str': 3238} |
| `memAvailableKb` | {'int': 3238} |
| `memTotalKb` | {'int': 3238} |
| `otherPssKb` | {'int': 3238} |
| `processes` | {'int': 3238} |
| `pssFallbackProcesses` | {'int': 3238} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
