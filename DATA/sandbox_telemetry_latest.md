# sandbox_telemetry_parse — 2026-11-25 11:10:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2732117 lines=6053
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6038 |
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
| `chromeBrowserPssKb` | {'int': 6038} |
| `chromeGpuPssKb` | {'int': 6038} |
| `chromeOtherPssKb` | {'int': 6038} |
| `chromeProcesses` | {'int': 6038} |
| `chromeProfiles` | {'int': 6038} |
| `chromeRendererMaxPssKb` | {'int': 6038} |
| `chromeRendererPssKb` | {'int': 6038} |
| `chromeRenderers` | {'int': 6038} |
| `chromeTabs` | {'int': 6038} |
| `chromeTabsProbedProfiles` | {'int': 6038} |
| `chromeUtilityPssKb` | {'int': 6038} |
| `desktopPssKb` | {'int': 6038} |
| `hostPssKb` | {'int': 6038} |
| `kind` | {'str': 6038} |
| `memAvailableKb` | {'int': 6038} |
| `memTotalKb` | {'int': 6038} |
| `otherPssKb` | {'int': 6038} |
| `processes` | {'int': 6038} |
| `pssFallbackProcesses` | {'int': 6038} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
