# sandbox_telemetry_parse — 2026-11-10 02:25:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=951671 lines=2111
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2102 |
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
| `chromeBrowserPssKb` | {'int': 2102} |
| `chromeGpuPssKb` | {'int': 2102} |
| `chromeOtherPssKb` | {'int': 2102} |
| `chromeProcesses` | {'int': 2102} |
| `chromeProfiles` | {'int': 2102} |
| `chromeRendererMaxPssKb` | {'int': 2102} |
| `chromeRendererPssKb` | {'int': 2102} |
| `chromeRenderers` | {'int': 2102} |
| `chromeTabs` | {'int': 2102} |
| `chromeTabsProbedProfiles` | {'int': 2102} |
| `chromeUtilityPssKb` | {'int': 2102} |
| `desktopPssKb` | {'int': 2102} |
| `hostPssKb` | {'int': 2102} |
| `kind` | {'str': 2102} |
| `memAvailableKb` | {'int': 2102} |
| `memTotalKb` | {'int': 2102} |
| `otherPssKb` | {'int': 2102} |
| `processes` | {'int': 2102} |
| `pssFallbackProcesses` | {'int': 2102} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
