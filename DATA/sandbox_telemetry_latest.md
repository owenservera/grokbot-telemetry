# sandbox_telemetry_parse — 2026-11-11 23:37:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1872069 lines=4145
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4136 |
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
| `chromeBrowserPssKb` | {'int': 4136} |
| `chromeGpuPssKb` | {'int': 4136} |
| `chromeOtherPssKb` | {'int': 4136} |
| `chromeProcesses` | {'int': 4136} |
| `chromeProfiles` | {'int': 4136} |
| `chromeRendererMaxPssKb` | {'int': 4136} |
| `chromeRendererPssKb` | {'int': 4136} |
| `chromeRenderers` | {'int': 4136} |
| `chromeTabs` | {'int': 4136} |
| `chromeTabsProbedProfiles` | {'int': 4136} |
| `chromeUtilityPssKb` | {'int': 4136} |
| `desktopPssKb` | {'int': 4136} |
| `hostPssKb` | {'int': 4136} |
| `kind` | {'str': 4136} |
| `memAvailableKb` | {'int': 4136} |
| `memTotalKb` | {'int': 4136} |
| `otherPssKb` | {'int': 4136} |
| `processes` | {'int': 4136} |
| `pssFallbackProcesses` | {'int': 4136} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
