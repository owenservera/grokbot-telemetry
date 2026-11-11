# sandbox_telemetry_parse — 2026-11-11 20:43:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1807340 lines=4002
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3993 |
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
| `chromeBrowserPssKb` | {'int': 3993} |
| `chromeGpuPssKb` | {'int': 3993} |
| `chromeOtherPssKb` | {'int': 3993} |
| `chromeProcesses` | {'int': 3993} |
| `chromeProfiles` | {'int': 3993} |
| `chromeRendererMaxPssKb` | {'int': 3993} |
| `chromeRendererPssKb` | {'int': 3993} |
| `chromeRenderers` | {'int': 3993} |
| `chromeTabs` | {'int': 3993} |
| `chromeTabsProbedProfiles` | {'int': 3993} |
| `chromeUtilityPssKb` | {'int': 3993} |
| `desktopPssKb` | {'int': 3993} |
| `hostPssKb` | {'int': 3993} |
| `kind` | {'str': 3993} |
| `memAvailableKb` | {'int': 3993} |
| `memTotalKb` | {'int': 3993} |
| `otherPssKb` | {'int': 3993} |
| `processes` | {'int': 3993} |
| `pssFallbackProcesses` | {'int': 3993} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
