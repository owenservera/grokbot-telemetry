# sandbox_telemetry_parse — 2026-11-12 14:51:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2181169 lines=4828
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4819 |
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
| `chromeBrowserPssKb` | {'int': 4819} |
| `chromeGpuPssKb` | {'int': 4819} |
| `chromeOtherPssKb` | {'int': 4819} |
| `chromeProcesses` | {'int': 4819} |
| `chromeProfiles` | {'int': 4819} |
| `chromeRendererMaxPssKb` | {'int': 4819} |
| `chromeRendererPssKb` | {'int': 4819} |
| `chromeRenderers` | {'int': 4819} |
| `chromeTabs` | {'int': 4819} |
| `chromeTabsProbedProfiles` | {'int': 4819} |
| `chromeUtilityPssKb` | {'int': 4819} |
| `desktopPssKb` | {'int': 4819} |
| `hostPssKb` | {'int': 4819} |
| `kind` | {'str': 4819} |
| `memAvailableKb` | {'int': 4819} |
| `memTotalKb` | {'int': 4819} |
| `otherPssKb` | {'int': 4819} |
| `processes` | {'int': 4819} |
| `pssFallbackProcesses` | {'int': 4819} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
