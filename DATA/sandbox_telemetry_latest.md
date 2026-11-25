# sandbox_telemetry_parse — 2026-11-25 16:12:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2827071 lines=6263
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6248 |
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
| `chromeBrowserPssKb` | {'int': 6248} |
| `chromeGpuPssKb` | {'int': 6248} |
| `chromeOtherPssKb` | {'int': 6248} |
| `chromeProcesses` | {'int': 6248} |
| `chromeProfiles` | {'int': 6248} |
| `chromeRendererMaxPssKb` | {'int': 6248} |
| `chromeRendererPssKb` | {'int': 6248} |
| `chromeRenderers` | {'int': 6248} |
| `chromeTabs` | {'int': 6248} |
| `chromeTabsProbedProfiles` | {'int': 6248} |
| `chromeUtilityPssKb` | {'int': 6248} |
| `desktopPssKb` | {'int': 6248} |
| `hostPssKb` | {'int': 6248} |
| `kind` | {'str': 6248} |
| `memAvailableKb` | {'int': 6248} |
| `memTotalKb` | {'int': 6248} |
| `otherPssKb` | {'int': 6248} |
| `processes` | {'int': 6248} |
| `pssFallbackProcesses` | {'int': 6248} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
