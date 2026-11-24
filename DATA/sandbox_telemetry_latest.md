# sandbox_telemetry_parse — 2026-11-24 15:58:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2349405 lines=5207
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5192 |
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
| `chromeBrowserPssKb` | {'int': 5192} |
| `chromeGpuPssKb` | {'int': 5192} |
| `chromeOtherPssKb` | {'int': 5192} |
| `chromeProcesses` | {'int': 5192} |
| `chromeProfiles` | {'int': 5192} |
| `chromeRendererMaxPssKb` | {'int': 5192} |
| `chromeRendererPssKb` | {'int': 5192} |
| `chromeRenderers` | {'int': 5192} |
| `chromeTabs` | {'int': 5192} |
| `chromeTabsProbedProfiles` | {'int': 5192} |
| `chromeUtilityPssKb` | {'int': 5192} |
| `desktopPssKb` | {'int': 5192} |
| `hostPssKb` | {'int': 5192} |
| `kind` | {'str': 5192} |
| `memAvailableKb` | {'int': 5192} |
| `memTotalKb` | {'int': 5192} |
| `otherPssKb` | {'int': 5192} |
| `processes` | {'int': 5192} |
| `pssFallbackProcesses` | {'int': 5192} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
