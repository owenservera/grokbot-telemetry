# sandbox_telemetry_parse — 2026-11-26 15:22:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3308808 lines=7328
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7313 |
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
| `chromeBrowserPssKb` | {'int': 7313} |
| `chromeGpuPssKb` | {'int': 7313} |
| `chromeOtherPssKb` | {'int': 7313} |
| `chromeProcesses` | {'int': 7313} |
| `chromeProfiles` | {'int': 7313} |
| `chromeRendererMaxPssKb` | {'int': 7313} |
| `chromeRendererPssKb` | {'int': 7313} |
| `chromeRenderers` | {'int': 7313} |
| `chromeTabs` | {'int': 7313} |
| `chromeTabsProbedProfiles` | {'int': 7313} |
| `chromeUtilityPssKb` | {'int': 7313} |
| `desktopPssKb` | {'int': 7313} |
| `hostPssKb` | {'int': 7313} |
| `kind` | {'str': 7313} |
| `memAvailableKb` | {'int': 7313} |
| `memTotalKb` | {'int': 7313} |
| `otherPssKb` | {'int': 7313} |
| `processes` | {'int': 7313} |
| `pssFallbackProcesses` | {'int': 7313} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
