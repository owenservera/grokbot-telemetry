# sandbox_telemetry_parse — 2026-11-20 05:53:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1592754 lines=3531
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3520 |
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
| `chromeBrowserPssKb` | {'int': 3520} |
| `chromeGpuPssKb` | {'int': 3520} |
| `chromeOtherPssKb` | {'int': 3520} |
| `chromeProcesses` | {'int': 3520} |
| `chromeProfiles` | {'int': 3520} |
| `chromeRendererMaxPssKb` | {'int': 3520} |
| `chromeRendererPssKb` | {'int': 3520} |
| `chromeRenderers` | {'int': 3520} |
| `chromeTabs` | {'int': 3520} |
| `chromeTabsProbedProfiles` | {'int': 3520} |
| `chromeUtilityPssKb` | {'int': 3520} |
| `desktopPssKb` | {'int': 3520} |
| `hostPssKb` | {'int': 3520} |
| `kind` | {'str': 3520} |
| `memAvailableKb` | {'int': 3520} |
| `memTotalKb` | {'int': 3520} |
| `otherPssKb` | {'int': 3520} |
| `processes` | {'int': 3520} |
| `pssFallbackProcesses` | {'int': 3520} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
