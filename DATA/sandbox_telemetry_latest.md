# sandbox_telemetry_parse — 2026-11-28 00:20:34 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=652566 lines=1449
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1441 |
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
| `chromeBrowserPssKb` | {'int': 1441} |
| `chromeGpuPssKb` | {'int': 1441} |
| `chromeOtherPssKb` | {'int': 1441} |
| `chromeProcesses` | {'int': 1441} |
| `chromeProfiles` | {'int': 1441} |
| `chromeRendererMaxPssKb` | {'int': 1441} |
| `chromeRendererPssKb` | {'int': 1441} |
| `chromeRenderers` | {'int': 1441} |
| `chromeTabs` | {'int': 1441} |
| `chromeTabsProbedProfiles` | {'int': 1441} |
| `chromeUtilityPssKb` | {'int': 1441} |
| `desktopPssKb` | {'int': 1441} |
| `hostPssKb` | {'int': 1441} |
| `kind` | {'str': 1441} |
| `memAvailableKb` | {'int': 1441} |
| `memTotalKb` | {'int': 1441} |
| `otherPssKb` | {'int': 1441} |
| `processes` | {'int': 1441} |
| `pssFallbackProcesses` | {'int': 1441} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
