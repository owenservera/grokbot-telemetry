# sandbox_telemetry_parse — 2026-11-19 20:30:13 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1432258 lines=3176
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3165 |
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
| `chromeBrowserPssKb` | {'int': 3165} |
| `chromeGpuPssKb` | {'int': 3165} |
| `chromeOtherPssKb` | {'int': 3165} |
| `chromeProcesses` | {'int': 3165} |
| `chromeProfiles` | {'int': 3165} |
| `chromeRendererMaxPssKb` | {'int': 3165} |
| `chromeRendererPssKb` | {'int': 3165} |
| `chromeRenderers` | {'int': 3165} |
| `chromeTabs` | {'int': 3165} |
| `chromeTabsProbedProfiles` | {'int': 3165} |
| `chromeUtilityPssKb` | {'int': 3165} |
| `desktopPssKb` | {'int': 3165} |
| `hostPssKb` | {'int': 3165} |
| `kind` | {'str': 3165} |
| `memAvailableKb` | {'int': 3165} |
| `memTotalKb` | {'int': 3165} |
| `otherPssKb` | {'int': 3165} |
| `processes` | {'int': 3165} |
| `pssFallbackProcesses` | {'int': 3165} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
