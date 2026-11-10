# sandbox_telemetry_parse — 2026-11-10 02:43:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=956194 lines=2121
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2112 |
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
| `chromeBrowserPssKb` | {'int': 2112} |
| `chromeGpuPssKb` | {'int': 2112} |
| `chromeOtherPssKb` | {'int': 2112} |
| `chromeProcesses` | {'int': 2112} |
| `chromeProfiles` | {'int': 2112} |
| `chromeRendererMaxPssKb` | {'int': 2112} |
| `chromeRendererPssKb` | {'int': 2112} |
| `chromeRenderers` | {'int': 2112} |
| `chromeTabs` | {'int': 2112} |
| `chromeTabsProbedProfiles` | {'int': 2112} |
| `chromeUtilityPssKb` | {'int': 2112} |
| `desktopPssKb` | {'int': 2112} |
| `hostPssKb` | {'int': 2112} |
| `kind` | {'str': 2112} |
| `memAvailableKb` | {'int': 2112} |
| `memTotalKb` | {'int': 2112} |
| `otherPssKb` | {'int': 2112} |
| `processes` | {'int': 2112} |
| `pssFallbackProcesses` | {'int': 2112} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
