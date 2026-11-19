# sandbox_telemetry_parse — 2026-11-20 00:00:38 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1499185 lines=3324
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3313 |
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
| `chromeBrowserPssKb` | {'int': 3313} |
| `chromeGpuPssKb` | {'int': 3313} |
| `chromeOtherPssKb` | {'int': 3313} |
| `chromeProcesses` | {'int': 3313} |
| `chromeProfiles` | {'int': 3313} |
| `chromeRendererMaxPssKb` | {'int': 3313} |
| `chromeRendererPssKb` | {'int': 3313} |
| `chromeRenderers` | {'int': 3313} |
| `chromeTabs` | {'int': 3313} |
| `chromeTabsProbedProfiles` | {'int': 3313} |
| `chromeUtilityPssKb` | {'int': 3313} |
| `desktopPssKb` | {'int': 3313} |
| `hostPssKb` | {'int': 3313} |
| `kind` | {'str': 3313} |
| `memAvailableKb` | {'int': 3313} |
| `memTotalKb` | {'int': 3313} |
| `otherPssKb` | {'int': 3313} |
| `processes` | {'int': 3313} |
| `pssFallbackProcesses` | {'int': 3313} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
