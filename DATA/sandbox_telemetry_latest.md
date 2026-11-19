# sandbox_telemetry_parse — 2026-11-19 23:29:57 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1487878 lines=3299
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3288 |
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
| `chromeBrowserPssKb` | {'int': 3288} |
| `chromeGpuPssKb` | {'int': 3288} |
| `chromeOtherPssKb` | {'int': 3288} |
| `chromeProcesses` | {'int': 3288} |
| `chromeProfiles` | {'int': 3288} |
| `chromeRendererMaxPssKb` | {'int': 3288} |
| `chromeRendererPssKb` | {'int': 3288} |
| `chromeRenderers` | {'int': 3288} |
| `chromeTabs` | {'int': 3288} |
| `chromeTabsProbedProfiles` | {'int': 3288} |
| `chromeUtilityPssKb` | {'int': 3288} |
| `desktopPssKb` | {'int': 3288} |
| `hostPssKb` | {'int': 3288} |
| `kind` | {'str': 3288} |
| `memAvailableKb` | {'int': 3288} |
| `memTotalKb` | {'int': 3288} |
| `otherPssKb` | {'int': 3288} |
| `processes` | {'int': 3288} |
| `pssFallbackProcesses` | {'int': 3288} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
