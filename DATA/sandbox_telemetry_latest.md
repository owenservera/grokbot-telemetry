# sandbox_telemetry_parse — 2026-11-28 01:33:34 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=677001 lines=1503
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1495 |
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
| `chromeBrowserPssKb` | {'int': 1495} |
| `chromeGpuPssKb` | {'int': 1495} |
| `chromeOtherPssKb` | {'int': 1495} |
| `chromeProcesses` | {'int': 1495} |
| `chromeProfiles` | {'int': 1495} |
| `chromeRendererMaxPssKb` | {'int': 1495} |
| `chromeRendererPssKb` | {'int': 1495} |
| `chromeRenderers` | {'int': 1495} |
| `chromeTabs` | {'int': 1495} |
| `chromeTabsProbedProfiles` | {'int': 1495} |
| `chromeUtilityPssKb` | {'int': 1495} |
| `desktopPssKb` | {'int': 1495} |
| `hostPssKb` | {'int': 1495} |
| `kind` | {'str': 1495} |
| `memAvailableKb` | {'int': 1495} |
| `memTotalKb` | {'int': 1495} |
| `otherPssKb` | {'int': 1495} |
| `processes` | {'int': 1495} |
| `pssFallbackProcesses` | {'int': 1495} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
