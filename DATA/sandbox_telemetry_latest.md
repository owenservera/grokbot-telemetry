# sandbox_telemetry_parse — 2026-11-20 12:59:34 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1723879 lines=3821
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3810 |
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
| `chromeBrowserPssKb` | {'int': 3810} |
| `chromeGpuPssKb` | {'int': 3810} |
| `chromeOtherPssKb` | {'int': 3810} |
| `chromeProcesses` | {'int': 3810} |
| `chromeProfiles` | {'int': 3810} |
| `chromeRendererMaxPssKb` | {'int': 3810} |
| `chromeRendererPssKb` | {'int': 3810} |
| `chromeRenderers` | {'int': 3810} |
| `chromeTabs` | {'int': 3810} |
| `chromeTabsProbedProfiles` | {'int': 3810} |
| `chromeUtilityPssKb` | {'int': 3810} |
| `desktopPssKb` | {'int': 3810} |
| `hostPssKb` | {'int': 3810} |
| `kind` | {'str': 3810} |
| `memAvailableKb` | {'int': 3810} |
| `memTotalKb` | {'int': 3810} |
| `otherPssKb` | {'int': 3810} |
| `processes` | {'int': 3810} |
| `pssFallbackProcesses` | {'int': 3810} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
