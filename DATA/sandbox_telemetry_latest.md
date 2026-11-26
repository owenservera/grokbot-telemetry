# sandbox_telemetry_parse — 2026-11-26 16:08:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3322988 lines=7361
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7344 |
| `egress_tunnel` | 13 |
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
| `attempt` | {'int': 13} |
| `exitStatus` | {'int': 6} |
| `kind` | {'str': 13} |
| `outcome` | {'str': 13} |
| `runtimeS` | {'int': 6} |

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
| `chromeBrowserPssKb` | {'int': 7344} |
| `chromeGpuPssKb` | {'int': 7344} |
| `chromeOtherPssKb` | {'int': 7344} |
| `chromeProcesses` | {'int': 7344} |
| `chromeProfiles` | {'int': 7344} |
| `chromeRendererMaxPssKb` | {'int': 7344} |
| `chromeRendererPssKb` | {'int': 7344} |
| `chromeRenderers` | {'int': 7344} |
| `chromeTabs` | {'int': 7344} |
| `chromeTabsProbedProfiles` | {'int': 7344} |
| `chromeUtilityPssKb` | {'int': 7344} |
| `desktopPssKb` | {'int': 7344} |
| `hostPssKb` | {'int': 7344} |
| `kind` | {'str': 7344} |
| `memAvailableKb` | {'int': 7344} |
| `memTotalKb` | {'int': 7344} |
| `otherPssKb` | {'int': 7344} |
| `processes` | {'int': 7344} |
| `pssFallbackProcesses` | {'int': 7344} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
