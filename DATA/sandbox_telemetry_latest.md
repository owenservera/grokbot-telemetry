# sandbox_telemetry_parse — 2026-11-17 23:04:37 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=577530 lines=1283
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1276 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `chromeBrowserPssKb` | {'int': 1276} |
| `chromeGpuPssKb` | {'int': 1276} |
| `chromeOtherPssKb` | {'int': 1276} |
| `chromeProcesses` | {'int': 1276} |
| `chromeProfiles` | {'int': 1276} |
| `chromeRendererMaxPssKb` | {'int': 1276} |
| `chromeRendererPssKb` | {'int': 1276} |
| `chromeRenderers` | {'int': 1276} |
| `chromeTabs` | {'int': 1276} |
| `chromeTabsProbedProfiles` | {'int': 1276} |
| `chromeUtilityPssKb` | {'int': 1276} |
| `desktopPssKb` | {'int': 1276} |
| `hostPssKb` | {'int': 1276} |
| `kind` | {'str': 1276} |
| `memAvailableKb` | {'int': 1276} |
| `memTotalKb` | {'int': 1276} |
| `otherPssKb` | {'int': 1276} |
| `processes` | {'int': 1276} |
| `pssFallbackProcesses` | {'int': 1276} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
