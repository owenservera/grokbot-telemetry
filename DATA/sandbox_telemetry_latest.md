# sandbox_telemetry_parse — 2026-11-12 11:11:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2101037 lines=4651
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4642 |
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
| `chromeBrowserPssKb` | {'int': 4642} |
| `chromeGpuPssKb` | {'int': 4642} |
| `chromeOtherPssKb` | {'int': 4642} |
| `chromeProcesses` | {'int': 4642} |
| `chromeProfiles` | {'int': 4642} |
| `chromeRendererMaxPssKb` | {'int': 4642} |
| `chromeRendererPssKb` | {'int': 4642} |
| `chromeRenderers` | {'int': 4642} |
| `chromeTabs` | {'int': 4642} |
| `chromeTabsProbedProfiles` | {'int': 4642} |
| `chromeUtilityPssKb` | {'int': 4642} |
| `desktopPssKb` | {'int': 4642} |
| `hostPssKb` | {'int': 4642} |
| `kind` | {'str': 4642} |
| `memAvailableKb` | {'int': 4642} |
| `memTotalKb` | {'int': 4642} |
| `otherPssKb` | {'int': 4642} |
| `processes` | {'int': 4642} |
| `pssFallbackProcesses` | {'int': 4642} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
