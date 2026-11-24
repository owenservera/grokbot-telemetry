# sandbox_telemetry_parse — 2026-11-24 14:17:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2317718 lines=5137
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5122 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 5122} |
| `chromeGpuPssKb` | {'int': 5122} |
| `chromeOtherPssKb` | {'int': 5122} |
| `chromeProcesses` | {'int': 5122} |
| `chromeProfiles` | {'int': 5122} |
| `chromeRendererMaxPssKb` | {'int': 5122} |
| `chromeRendererPssKb` | {'int': 5122} |
| `chromeRenderers` | {'int': 5122} |
| `chromeTabs` | {'int': 5122} |
| `chromeTabsProbedProfiles` | {'int': 5122} |
| `chromeUtilityPssKb` | {'int': 5122} |
| `desktopPssKb` | {'int': 5122} |
| `hostPssKb` | {'int': 5122} |
| `kind` | {'str': 5122} |
| `memAvailableKb` | {'int': 5122} |
| `memTotalKb` | {'int': 5122} |
| `otherPssKb` | {'int': 5122} |
| `processes` | {'int': 5122} |
| `pssFallbackProcesses` | {'int': 5122} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
