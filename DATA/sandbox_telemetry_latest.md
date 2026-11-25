# sandbox_telemetry_parse — 2026-11-25 15:55:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2821194 lines=6250
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6235 |
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
| `chromeBrowserPssKb` | {'int': 6235} |
| `chromeGpuPssKb` | {'int': 6235} |
| `chromeOtherPssKb` | {'int': 6235} |
| `chromeProcesses` | {'int': 6235} |
| `chromeProfiles` | {'int': 6235} |
| `chromeRendererMaxPssKb` | {'int': 6235} |
| `chromeRendererPssKb` | {'int': 6235} |
| `chromeRenderers` | {'int': 6235} |
| `chromeTabs` | {'int': 6235} |
| `chromeTabsProbedProfiles` | {'int': 6235} |
| `chromeUtilityPssKb` | {'int': 6235} |
| `desktopPssKb` | {'int': 6235} |
| `hostPssKb` | {'int': 6235} |
| `kind` | {'str': 6235} |
| `memAvailableKb` | {'int': 6235} |
| `memTotalKb` | {'int': 6235} |
| `otherPssKb` | {'int': 6235} |
| `processes` | {'int': 6235} |
| `pssFallbackProcesses` | {'int': 6235} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
