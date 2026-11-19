# sandbox_telemetry_parse — 2026-11-19 22:58:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1476126 lines=3273
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3262 |
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
| `chromeBrowserPssKb` | {'int': 3262} |
| `chromeGpuPssKb` | {'int': 3262} |
| `chromeOtherPssKb` | {'int': 3262} |
| `chromeProcesses` | {'int': 3262} |
| `chromeProfiles` | {'int': 3262} |
| `chromeRendererMaxPssKb` | {'int': 3262} |
| `chromeRendererPssKb` | {'int': 3262} |
| `chromeRenderers` | {'int': 3262} |
| `chromeTabs` | {'int': 3262} |
| `chromeTabsProbedProfiles` | {'int': 3262} |
| `chromeUtilityPssKb` | {'int': 3262} |
| `desktopPssKb` | {'int': 3262} |
| `hostPssKb` | {'int': 3262} |
| `kind` | {'str': 3262} |
| `memAvailableKb` | {'int': 3262} |
| `memTotalKb` | {'int': 3262} |
| `otherPssKb` | {'int': 3262} |
| `processes` | {'int': 3262} |
| `pssFallbackProcesses` | {'int': 3262} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
