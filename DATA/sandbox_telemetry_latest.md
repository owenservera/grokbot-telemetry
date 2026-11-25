# sandbox_telemetry_parse — 2026-11-25 23:24:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2970865 lines=6581
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6566 |
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
| `chromeBrowserPssKb` | {'int': 6566} |
| `chromeGpuPssKb` | {'int': 6566} |
| `chromeOtherPssKb` | {'int': 6566} |
| `chromeProcesses` | {'int': 6566} |
| `chromeProfiles` | {'int': 6566} |
| `chromeRendererMaxPssKb` | {'int': 6566} |
| `chromeRendererPssKb` | {'int': 6566} |
| `chromeRenderers` | {'int': 6566} |
| `chromeTabs` | {'int': 6566} |
| `chromeTabsProbedProfiles` | {'int': 6566} |
| `chromeUtilityPssKb` | {'int': 6566} |
| `desktopPssKb` | {'int': 6566} |
| `hostPssKb` | {'int': 6566} |
| `kind` | {'str': 6566} |
| `memAvailableKb` | {'int': 6566} |
| `memTotalKb` | {'int': 6566} |
| `otherPssKb` | {'int': 6566} |
| `processes` | {'int': 6566} |
| `pssFallbackProcesses` | {'int': 6566} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
