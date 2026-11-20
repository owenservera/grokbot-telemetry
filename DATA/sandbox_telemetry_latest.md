# sandbox_telemetry_parse — 2026-11-20 09:00:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1647908 lines=3653
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3642 |
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
| `chromeBrowserPssKb` | {'int': 3642} |
| `chromeGpuPssKb` | {'int': 3642} |
| `chromeOtherPssKb` | {'int': 3642} |
| `chromeProcesses` | {'int': 3642} |
| `chromeProfiles` | {'int': 3642} |
| `chromeRendererMaxPssKb` | {'int': 3642} |
| `chromeRendererPssKb` | {'int': 3642} |
| `chromeRenderers` | {'int': 3642} |
| `chromeTabs` | {'int': 3642} |
| `chromeTabsProbedProfiles` | {'int': 3642} |
| `chromeUtilityPssKb` | {'int': 3642} |
| `desktopPssKb` | {'int': 3642} |
| `hostPssKb` | {'int': 3642} |
| `kind` | {'str': 3642} |
| `memAvailableKb` | {'int': 3642} |
| `memTotalKb` | {'int': 3642} |
| `otherPssKb` | {'int': 3642} |
| `processes` | {'int': 3642} |
| `pssFallbackProcesses` | {'int': 3642} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
