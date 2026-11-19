# sandbox_telemetry_parse — 2026-11-19 20:20:13 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1428181 lines=3167
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3156 |
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
| `chromeBrowserPssKb` | {'int': 3156} |
| `chromeGpuPssKb` | {'int': 3156} |
| `chromeOtherPssKb` | {'int': 3156} |
| `chromeProcesses` | {'int': 3156} |
| `chromeProfiles` | {'int': 3156} |
| `chromeRendererMaxPssKb` | {'int': 3156} |
| `chromeRendererPssKb` | {'int': 3156} |
| `chromeRenderers` | {'int': 3156} |
| `chromeTabs` | {'int': 3156} |
| `chromeTabsProbedProfiles` | {'int': 3156} |
| `chromeUtilityPssKb` | {'int': 3156} |
| `desktopPssKb` | {'int': 3156} |
| `hostPssKb` | {'int': 3156} |
| `kind` | {'str': 3156} |
| `memAvailableKb` | {'int': 3156} |
| `memTotalKb` | {'int': 3156} |
| `otherPssKb` | {'int': 3156} |
| `processes` | {'int': 3156} |
| `pssFallbackProcesses` | {'int': 3156} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
