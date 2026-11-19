# sandbox_telemetry_parse — 2026-11-19 22:35:38 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1469798 lines=3259
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3248 |
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
| `chromeBrowserPssKb` | {'int': 3248} |
| `chromeGpuPssKb` | {'int': 3248} |
| `chromeOtherPssKb` | {'int': 3248} |
| `chromeProcesses` | {'int': 3248} |
| `chromeProfiles` | {'int': 3248} |
| `chromeRendererMaxPssKb` | {'int': 3248} |
| `chromeRendererPssKb` | {'int': 3248} |
| `chromeRenderers` | {'int': 3248} |
| `chromeTabs` | {'int': 3248} |
| `chromeTabsProbedProfiles` | {'int': 3248} |
| `chromeUtilityPssKb` | {'int': 3248} |
| `desktopPssKb` | {'int': 3248} |
| `hostPssKb` | {'int': 3248} |
| `kind` | {'str': 3248} |
| `memAvailableKb` | {'int': 3248} |
| `memTotalKb` | {'int': 3248} |
| `otherPssKb` | {'int': 3248} |
| `processes` | {'int': 3248} |
| `pssFallbackProcesses` | {'int': 3248} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
