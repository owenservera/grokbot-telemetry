# sandbox_telemetry_parse — 2026-11-12 20:25:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2313896 lines=5121
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5112 |
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
| `chromeBrowserPssKb` | {'int': 5112} |
| `chromeGpuPssKb` | {'int': 5112} |
| `chromeOtherPssKb` | {'int': 5112} |
| `chromeProcesses` | {'int': 5112} |
| `chromeProfiles` | {'int': 5112} |
| `chromeRendererMaxPssKb` | {'int': 5112} |
| `chromeRendererPssKb` | {'int': 5112} |
| `chromeRenderers` | {'int': 5112} |
| `chromeTabs` | {'int': 5112} |
| `chromeTabsProbedProfiles` | {'int': 5112} |
| `chromeUtilityPssKb` | {'int': 5112} |
| `desktopPssKb` | {'int': 5112} |
| `hostPssKb` | {'int': 5112} |
| `kind` | {'str': 5112} |
| `memAvailableKb` | {'int': 5112} |
| `memTotalKb` | {'int': 5112} |
| `otherPssKb` | {'int': 5112} |
| `processes` | {'int': 5112} |
| `pssFallbackProcesses` | {'int': 5112} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
