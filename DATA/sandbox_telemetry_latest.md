# sandbox_telemetry_parse — 2026-11-17 22:29:23 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=567581 lines=1261
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1254 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `chromeBrowserPssKb` | {'int': 1254} |
| `chromeGpuPssKb` | {'int': 1254} |
| `chromeOtherPssKb` | {'int': 1254} |
| `chromeProcesses` | {'int': 1254} |
| `chromeProfiles` | {'int': 1254} |
| `chromeRendererMaxPssKb` | {'int': 1254} |
| `chromeRendererPssKb` | {'int': 1254} |
| `chromeRenderers` | {'int': 1254} |
| `chromeTabs` | {'int': 1254} |
| `chromeTabsProbedProfiles` | {'int': 1254} |
| `chromeUtilityPssKb` | {'int': 1254} |
| `desktopPssKb` | {'int': 1254} |
| `hostPssKb` | {'int': 1254} |
| `kind` | {'str': 1254} |
| `memAvailableKb` | {'int': 1254} |
| `memTotalKb` | {'int': 1254} |
| `otherPssKb` | {'int': 1254} |
| `processes` | {'int': 1254} |
| `pssFallbackProcesses` | {'int': 1254} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
