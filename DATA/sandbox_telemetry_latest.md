# sandbox_telemetry_parse — 2026-11-26 22:35:34 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=115492 lines=262
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 254 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 254} |
| `chromeGpuPssKb` | {'int': 254} |
| `chromeOtherPssKb` | {'int': 254} |
| `chromeProcesses` | {'int': 254} |
| `chromeProfiles` | {'int': 254} |
| `chromeRendererMaxPssKb` | {'int': 254} |
| `chromeRendererPssKb` | {'int': 254} |
| `chromeRenderers` | {'int': 254} |
| `chromeTabs` | {'int': 254} |
| `chromeTabsProbedProfiles` | {'int': 254} |
| `chromeUtilityPssKb` | {'int': 254} |
| `desktopPssKb` | {'int': 254} |
| `hostPssKb` | {'int': 254} |
| `kind` | {'str': 254} |
| `memAvailableKb` | {'int': 254} |
| `memTotalKb` | {'int': 254} |
| `otherPssKb` | {'int': 254} |
| `processes` | {'int': 254} |
| `pssFallbackProcesses` | {'int': 254} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
