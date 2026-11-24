# sandbox_telemetry_parse — 2026-11-24 22:31:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2477971 lines=5491
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5476 |
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
| `chromeBrowserPssKb` | {'int': 5476} |
| `chromeGpuPssKb` | {'int': 5476} |
| `chromeOtherPssKb` | {'int': 5476} |
| `chromeProcesses` | {'int': 5476} |
| `chromeProfiles` | {'int': 5476} |
| `chromeRendererMaxPssKb` | {'int': 5476} |
| `chromeRendererPssKb` | {'int': 5476} |
| `chromeRenderers` | {'int': 5476} |
| `chromeTabs` | {'int': 5476} |
| `chromeTabsProbedProfiles` | {'int': 5476} |
| `chromeUtilityPssKb` | {'int': 5476} |
| `desktopPssKb` | {'int': 5476} |
| `hostPssKb` | {'int': 5476} |
| `kind` | {'str': 5476} |
| `memAvailableKb` | {'int': 5476} |
| `memTotalKb` | {'int': 5476} |
| `otherPssKb` | {'int': 5476} |
| `processes` | {'int': 5476} |
| `pssFallbackProcesses` | {'int': 5476} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
